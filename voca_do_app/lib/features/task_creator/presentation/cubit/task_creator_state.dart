import 'package:equatable/equatable.dart';

abstract class TaskCreatorState extends Equatable {
  const TaskCreatorState();

  @override
  List<Object?> get props => [];
}

class TaskCreatorInitialState extends TaskCreatorState {}

class TaskCreatorRecordingState extends TaskCreatorState {}

class TaskCreatorLoadingState extends TaskCreatorState {}

class TaskCreatorSuccessState extends TaskCreatorState {
  final String? transcript;
  final bool voiceRecored;

  const TaskCreatorSuccessState({this.transcript, required this.voiceRecored});

  @override
  List<Object?> get props => [transcript,voiceRecored];
}

class TaskCreatorErrorState extends TaskCreatorState {
  final String message;

  const TaskCreatorErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}