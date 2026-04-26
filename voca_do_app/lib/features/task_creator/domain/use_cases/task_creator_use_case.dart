import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/sub/task_generator/domain/entities/task_entity.dart';
import 'package:voca_do_app/features/task_creator/domain/entities/task_creator_entity.dart';
import 'package:voca_do_app/features/task_creator/domain/repositories/task_creator_repository_domain.dart';


@lazySingleton
class TaskCreatorUseCase {
  final TaskCreatorRepositoryDomain _repositoryData;

  TaskCreatorUseCase(this._repositoryData);

   Future<Result<TaskCreatorEntity, Failure>> getTaskCreator() async {
    return _repositoryData.getTaskCreator();
  }
  Future<Result<TaskCreatorEntity, Failure>> getVoiceRecordAi() async {
    return _repositoryData.getVoiceRecordAi();
  }
  Future<Result<bool, Failure>> startVoiceRecord() async {
    return _repositoryData.startVoiceRecord();
  }
   Future<Result<TaskEntity, Failure>> parseTaskWithAi({
    required String transcription,
  }) async {
    return _repositoryData.parseTaskWithAi(transcription: transcription);
  }
}
