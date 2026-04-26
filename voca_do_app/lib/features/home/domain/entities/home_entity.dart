import 'package:equatable/equatable.dart';

class HomeEntity extends Equatable {
  final int newTasks;
  final int inProgressTasks;
  final int lateTasks;

  const HomeEntity({
    required this.newTasks,
    required this.inProgressTasks,
    required this.lateTasks,
  });

  @override
  List<Object?> get props => [newTasks, inProgressTasks, lateTasks];
}
