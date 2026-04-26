import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voca_do_app/features/task_creator/domain/use_cases/task_creator_use_case.dart';
import 'package:voca_do_app/features/task_creator/presentation/cubit/task_creator_state.dart';

class TaskCreatorCubit extends Cubit<TaskCreatorState> {
  final TaskCreatorUseCase _taskCreatorUseCase;

  TaskCreatorCubit(this._taskCreatorUseCase) : super(TaskCreatorInitialState());

  Future<void> getTaskCreatorMethod() async {
    final result = await _taskCreatorUseCase.getTaskCreator();
    result.when(
      (success) {
        //here is when success result
      },
      (whenError) {
        //here is when error result
      },
    );
  }

  Future<void> parseTaskWithAi({required String transcription}) async {
    emit(TaskCreatorLoadingState());
    final result = await _taskCreatorUseCase.parseTaskWithAi(
      transcription: transcription,
    );
    result.when(
      (success) {
        //here is when success result
        emit(TaskCreatorResultSuccessState(task: success));
      },
      (whenError) {
        //here is when error result
        emit(TaskCreatorErrorState(message: whenError.message));
      },
    );
  }

  // method to start the record
  Future<void> startRecord() async {
    emit(TaskCreatorRecordingState());
    final result = await _taskCreatorUseCase.startVoiceRecord();

    result.when((success) {}, (error) {
      emit(TaskCreatorErrorState(message: error.message));
    });
  }

  Future<void> stopRecordAndConvert() async {
    emit(TaskCreatorLoadingState());

    final result = await _taskCreatorUseCase.getVoiceRecordAi();

    result.when(
      (success) {
        emit(
          TaskCreatorSuccessState(
            transcript: success.transcript,
            voiceRecored: false,
          ),
        );
      },
      (error) {
        emit(TaskCreatorErrorState(message: error.message));
      },
    );
  }

  Future<void> getVoiceRecoredAiMethod() async {
    final result = await _taskCreatorUseCase.getVoiceRecordAi();
    result.when(
      (success) {
        debugPrint("this is the method updatePath for voice cubit ");

        emit(
          TaskCreatorSuccessState(
            voiceRecored: false,
            transcript: success.transcript,
          ),
        );
      },
      (whenError) {
        emit(TaskCreatorErrorState(message: whenError.message));
      },
    );
  }

  Future<void> startVoiceRecoredMethod() async {
    final result = await _taskCreatorUseCase.startVoiceRecord();
    result.when(
      (success) {
        debugPrint("************************************************* ");

        emit(TaskCreatorSuccessState(voiceRecored: true));
        //here is when success result start recored
      },
      (whenError) {
        debugPrint("+++++++++++++++++++++++++++++++++++++++++++++++++++++");

        emit(TaskCreatorErrorState(message: whenError.message));
      },
    );
  }

  // just if the user want to do the record again
  void retryRecord() {
    startRecord();
  }

  // it the user not like the text it can clear the text
  void clearText() {
    emit(TaskCreatorInitialState());
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
