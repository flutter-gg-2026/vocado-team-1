import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {
  final int newTasks;
  final int inProgressTasks;
  final int lateTasks;

  const HomeSuccessState({
    required this.newTasks,
    required this.inProgressTasks,
    required this.lateTasks,
  });

  @override
  List<Object?> get props => [newTasks, inProgressTasks, lateTasks];
}

class HomeErrorState extends HomeState {
  final String message;
  const HomeErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
