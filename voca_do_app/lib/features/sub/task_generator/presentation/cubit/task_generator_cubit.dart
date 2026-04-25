import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voca_do_app/features/sub/task_generator/domain/use_cases/task_generator_use_case.dart';
import 'package:voca_do_app/features/sub/task_generator/presentation/cubit/task_generator_state.dart';

class TaskGeneratorCubit extends Cubit<TaskGeneratorState> {
  final TaskGeneratorUseCase _taskGeneratorUseCase;

  TaskGeneratorCubit(this._taskGeneratorUseCase)
    : super(TaskGeneratorInitialState());

  Future<void> parseTaskWithAi({required String transcription}) async {
    emit(TaskGeneratorLoadingState());
    final result = await _taskGeneratorUseCase.parseTaskWithAi(
      transcription: transcription,
    );
    result.when(
      (success) {
        //here is when success result
        emit(TaskGeneratorSuccessState(task: success));
      },
      (whenError) {
        //here is when error result
        emit(TaskGeneratorErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
