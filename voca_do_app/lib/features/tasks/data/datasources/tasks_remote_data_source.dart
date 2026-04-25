import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:voca_do_app/core/services/local_keys_service.dart';
import 'package:voca_do_app/features/tasks/data/models/tasks_model.dart';
import 'package:voca_do_app/core/errors/network_exceptions.dart';

abstract class BaseTasksRemoteDataSource {
  Future<List<TasksModel>> getTasks();
}

@LazySingleton(as: BaseTasksRemoteDataSource)
class TasksRemoteDataSource implements BaseTasksRemoteDataSource {
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;

  TasksRemoteDataSource(this._localKeysService, this._supabase);

  @override
  Future<List<TasksModel>> getTasks() async {
    try {
      final response = await _supabase
          .from('tasks')
          .select()
          // TODO: replace after sign-in stores real userId
          .eq('assigned_to', 'c42a8b7d-4ac3-49b7-bf6b-fdc9c8cffb38');

      return response.map<TasksModel>((e) {
        return TasksModel.fromJson(e);
      }).toList();
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
