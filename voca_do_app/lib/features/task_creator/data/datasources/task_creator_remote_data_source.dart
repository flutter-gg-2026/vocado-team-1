import 'dart:io';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:voca_do_app/core/network/dio_client.dart';
import 'package:voca_do_app/core/network/gladia_extesion.dart';
import 'package:voca_do_app/core/services/voice_recorder_service.dart';
import 'package:voca_do_app/features/task_creator/data/models/task_creator_model.dart';
import 'package:voca_do_app/core/errors/network_exceptions.dart';

abstract class BaseTaskCreatorRemoteDataSource {
  Future<TaskCreatorModel> getTaskCreator();
  Future<bool> startVoiceRecord();
  Future<TaskCreatorModel> getVoiceRecordAi();
}

@LazySingleton(as: BaseTaskCreatorRemoteDataSource)
class TaskCreatorRemoteDataSource implements BaseTaskCreatorRemoteDataSource {
  final DioClient _dio;
  final VoiceService _voiceService;

  TaskCreatorRemoteDataSource(this._dio, this._voiceService);

  @override
  Future<TaskCreatorModel> getTaskCreator() async {// not used in the screen 
    try {
      return TaskCreatorModel(transcript: '');
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<TaskCreatorModel> getVoiceRecordAi() async {
    try {
     // debugPrint(  "-----------datasource-getVoiceRecoredAi-----------------------------", );

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
    /*  debugPrint(
        "-----------datasource-response3 ${responseForRsult}-----------------------------",
      );
      debugPrint(
        "-----------datasource-response3 ${responseForTranscript}-----------------------------",
      );
      debugPrint(
        "-----------datasource-response3 ${responseForUpload}-----------------------------",
      );

      // here for testing the code if there is a sound or not
      final transcript = responseForRsult;

      if (transcript == null || transcript.toString().trim().isEmpty) {
        throw Exception("No speech detected. Please try again.");
      }
*/
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
}
