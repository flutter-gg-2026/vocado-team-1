import 'package:multiple_result/multiple_result.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/tasks/domain/entities/tasks_entity.dart';

abstract class TasksRepositoryDomain {
  Future<Result<List<TasksEntity>, Failure>> getTasks();
}
