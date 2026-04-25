import 'package:multiple_result/multiple_result.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/sub/task_generator/domain/entities/task_entity.dart';

abstract class TaskGeneratorRepositoryDomain {
  Future<Result<TaskEntity, Failure>> parseTaskWithAi({
    required String transcription,
  });
}
