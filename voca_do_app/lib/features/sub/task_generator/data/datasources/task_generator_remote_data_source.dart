import 'dart:convert';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uuid/v4.dart';
import 'package:voca_do_app/core/config/env.dart';
import 'package:voca_do_app/core/services/local_keys_service.dart';
import 'package:voca_do_app/features/sub/task_generator/data/models/task_model.dart';
import 'package:voca_do_app/core/errors/network_exceptions.dart';
import 'package:google_generative_ai/google_generative_ai.dart' as gen_ai;

abstract class BaseTaskGeneratorRemoteDataSource {
  Future<TaskModel> parseTaskWithAi({required String transcription});
}

@LazySingleton(as: BaseTaskGeneratorRemoteDataSource)
class TaskGeneratorRemoteDataSource
    implements BaseTaskGeneratorRemoteDataSource {
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;
  //Prepare the data json schema that is required
  final taskSchema = gen_ai.Schema.object(
    properties: {
      'title': gen_ai.Schema.string(),
      'assignee': gen_ai.Schema.string(),
      'due_date': gen_ai.Schema.string(),
    },
    //requiredProperties: ['task', 'assignee', 'due_date'],
  );

  TaskGeneratorRemoteDataSource(this._localKeysService, this._supabase);

  @override
  Future<TaskModel> parseTaskWithAi({required String transcription}) async {
    try {
      //create the model that is going to be used
      final model = GenerativeModel(
        model: 'gemini-2.5-flash',
        apiKey: Env.geminiKey,
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
