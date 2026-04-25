import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/tasks/domain/entities/tasks_entity.dart';
import 'package:voca_do_app/features/tasks/domain/repositories/tasks_repository_domain.dart';

@lazySingleton
class TasksUseCase {
  final TasksRepositoryDomain _repositoryData;

  TasksUseCase(this._repositoryData);

  Future<Result<List<TasksEntity>, Failure>> getTasks() async {
    return _repositoryData.getTasks();
  }
}
