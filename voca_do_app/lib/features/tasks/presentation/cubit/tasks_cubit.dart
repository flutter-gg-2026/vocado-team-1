import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voca_do_app/features/tasks/domain/use_cases/tasks_use_case.dart';
import 'package:voca_do_app/features/tasks/presentation/cubit/tasks_state.dart';

class TasksCubit extends Cubit<TasksState> {
  final TasksUseCase _tasksUseCase;

  TasksCubit(this._tasksUseCase) : super(TasksInitialState());

  Future<void> getTasksMethod() async {
    emit(TasksLoadingState());
    final result = await _tasksUseCase.getTasks();
    result.when(
      (success) {
        emit(TasksSuccessState(tasks: success));
      },
      (whenError) {
        emit(TasksErrorState(message: whenError.toString()));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
