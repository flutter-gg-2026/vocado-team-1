import 'package:multiple_result/multiple_result.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/task_creator/domain/entities/task_creator_entity.dart';

abstract class TaskCreatorRepositoryDomain {
    Future<Result<TaskCreatorEntity, Failure>> getTaskCreator();
     Future<Result<TaskCreatorEntity, Failure>> getVoiceRecordAi();
    Future<Result<bool, Failure>> startVoiceRecord();

}
