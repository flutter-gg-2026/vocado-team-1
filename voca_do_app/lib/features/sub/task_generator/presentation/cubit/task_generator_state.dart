import 'package:equatable/equatable.dart';
import 'package:voca_do_app/features/sub/task_generator/domain/entities/task_entity.dart';

abstract class TaskGeneratorState extends Equatable {
  const TaskGeneratorState();

  @override
  List<Object?> get props => [];
}

class TaskGeneratorInitialState extends TaskGeneratorState {}

class TaskGeneratorLoadingState extends TaskGeneratorState {}

class TaskGeneratorSuccessState extends TaskGeneratorState {
  final TaskEntity task;

 const TaskGeneratorSuccessState({required this.task});
}

class TaskGeneratorErrorState extends TaskGeneratorState {
  final String message;
  const TaskGeneratorErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
