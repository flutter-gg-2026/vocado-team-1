
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:voca_do_app/core/errors/network_exceptions.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/tasks/domain/entities/tasks_entity.dart';

import 'package:voca_do_app/features/tasks/data/datasources/tasks_remote_data_source.dart';
import 'package:voca_do_app/features/tasks/data/models/tasks_model.dart';
import 'package:voca_do_app/features/tasks/domain/repositories/tasks_repository_domain.dart';

@LazySingleton(as: TasksRepositoryDomain)
class TasksRepositoryData implements TasksRepositoryDomain{
  final BaseTasksRemoteDataSource remoteDataSource;


  TasksRepositoryData(this.remoteDataSource);

@override
  Future<Result<List<TasksEntity>, Failure>> getTasks() async {
    try {
      final response = await remoteDataSource.getTasks();
      return Success(response.map((task) => task.toEntity()).toList());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
