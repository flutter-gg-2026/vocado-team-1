import 'package:equatable/equatable.dart';
import 'package:voca_do_app/features/sub/task_generator/domain/entities/task_entity.dart';

abstract class TaskCreatorState extends Equatable {
  const TaskCreatorState();

  @override
  List<Object?> get props => [];
}

class TaskCreatorInitialState extends TaskCreatorState {}

class TaskCreatorRecordingState extends TaskCreatorState {}

class TaskCreatorLoadingState extends TaskCreatorState {}

class TaskCreatorResultSuccessState extends TaskCreatorState {
  final TaskEntity task;
  @override
  List<Object?> get props => [task];

  const TaskCreatorResultSuccessState({required this.task});
}

class TaskCreatorSuccessState extends TaskCreatorState {
  final String? transcript;
  final bool voiceRecored;

  const TaskCreatorSuccessState({this.transcript, required this.voiceRecored});

  @override
  List<Object?> get props => [transcript, voiceRecored];
}

class TaskCreatorErrorState extends TaskCreatorState {
  final String message;

  const TaskCreatorErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}
