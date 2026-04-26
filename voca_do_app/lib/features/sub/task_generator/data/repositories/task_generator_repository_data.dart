import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:voca_do_app/core/errors/network_exceptions.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/sub/task_generator/domain/entities/task_entity.dart';

import 'package:voca_do_app/features/sub/task_generator/data/datasources/task_generator_remote_data_source.dart';
import 'package:voca_do_app/features/sub/task_generator/data/models/task_model.dart';
import 'package:voca_do_app/features/sub/task_generator/domain/repositories/task_generator_repository_domain.dart';

@LazySingleton(as: TaskGeneratorRepositoryDomain)
class TaskGeneratorRepositoryData implements TaskGeneratorRepositoryDomain {
  final BaseTaskGeneratorRemoteDataSource remoteDataSource;

  TaskGeneratorRepositoryData(this.remoteDataSource);

  @override
  Future<Result<TaskEntity, Failure>> parseTaskWithAi({
    required String transcription,
  }) async {
    try {
      final response = await remoteDataSource.parseTaskWithAi(
        transcription: transcription,
      );
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
