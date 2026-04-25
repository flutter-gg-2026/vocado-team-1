import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/sub/task_generator/domain/entities/task_entity.dart';
import 'package:voca_do_app/features/sub/task_generator/domain/repositories/task_generator_repository_domain.dart';


@lazySingleton
class TaskGeneratorUseCase {
  final TaskGeneratorRepositoryDomain _repositoryData;

  TaskGeneratorUseCase(this._repositoryData);

   Future<Result<TaskEntity, Failure>> parseTaskWithAi({
    required String transcription,
  }) async {
    return _repositoryData.parseTaskWithAi(transcription: transcription);
  }
}
