import 'dart:convert';
import 'dart:io';
import 'package:google_generative_ai/google_generative_ai.dart' as gen_ai;
import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/v4.dart';
import 'package:voca_do_app/core/config/env.dart';
import 'package:voca_do_app/core/network/dio_client.dart';
import 'package:voca_do_app/core/network/gladia_extesion.dart';
import 'package:voca_do_app/core/services/voice_recorder_service.dart';
import 'package:voca_do_app/features/sub/task_generator/data/models/task_model.dart';
import 'package:voca_do_app/features/task_creator/data/models/task_creator_model.dart';
import 'package:voca_do_app/core/errors/network_exceptions.dart';

abstract class BaseTaskCreatorRemoteDataSource {
  Future<TaskCreatorModel> getTaskCreator();
  Future<bool> startVoiceRecord();
  Future<TaskCreatorModel> getVoiceRecordAi();
  Future<TaskModel> parseTaskWithAi({required String transcription});
}

@LazySingleton(as: BaseTaskCreatorRemoteDataSource)
class TaskCreatorRemoteDataSource implements BaseTaskCreatorRemoteDataSource {
  final DioClient _dio;
  final VoiceService _voiceService;
  //Prepare the data json schema that is required
  final taskSchema = gen_ai.Schema.object(
    properties: {
      'title': gen_ai.Schema.string(),
      'assignee': gen_ai.Schema.string(),
      'due_date': gen_ai.Schema.string(),
    },
    //requiredProperties: ['task', 'assignee', 'due_date'],
  );

  TaskCreatorRemoteDataSource(this._dio, this._voiceService);

  @override
  Future<TaskCreatorModel> getTaskCreator() async {
    // not used in the screen
    try {
      return TaskCreatorModel(transcript: '');
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<TaskCreatorModel> getVoiceRecordAi() async {
    try {
      final voiceRecord = await _voiceService.stopRecord();
      final responseForUpload = await _dio.voiceUploadMethod(
        file: File(voiceRecord!),
      );
      final responseForTranscript = await _dio.voiceTranscriptMethod(
        url: responseForUpload,
      );
      final responseForRsult = await _dio.getInformation(
        idVoiceTranscript: responseForTranscript,
      );

      return TaskCreatorModel(transcript: responseForRsult);
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<bool> startVoiceRecord() async {
    try {
      debugPrint(
        "-----------datasource-startVoiceRecored-----------------------------",
      );
      await _voiceService.startRecord();
      return true;
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<TaskModel> parseTaskWithAi({required String transcription}) async {
    try {
      //create the model that is going to be used
      final model = GenerativeModel(
        model: 'gemini-2.5-flash',
        apiKey: "Env.geminiKey",
      );
      //Setup the output configuration
      final config = GenerationConfig(
        responseMimeType: 'application/json',
        responseSchema: taskSchema,
      );
      //ask the model to generate the task
      final response = await model.generateContent([
        Content.text('''
    Analyze the following transcription and extract task details. 
    Return ONLY a valid JSON object with the keys: "task", "assignee", and "due_date".
    Use the format YYYY-MM-DD for the due date. Use null if a field is missing.
    Today's date is ${DateTime.now().toIso8601String()}.
    
    Transcription: "$transcription"
    '''),
      ], generationConfig: config);
      //get the final response
      final jsonString = response.text!;
      final Map<String, dynamic> responseData = jsonDecode(jsonString);
      return TaskModel(
        id: UuidV4().generate(),
        task: responseData['title'],
        assignee: responseData['assignee'],
        dueDate: responseData['due_date'],
        description: '',
      );
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
