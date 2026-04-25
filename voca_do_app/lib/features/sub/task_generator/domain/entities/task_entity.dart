import 'package:equatable/equatable.dart';

class TaskEntity extends Equatable {
  final String id;
  final String task;
  final String? assignee;
  final String? dueDate;
  final String? description;

  const TaskEntity({
    required this.id,
    required this.task,
    this.assignee,
    this.dueDate,
    this.description,
  });

  @override
  List<Object?> get props => [id, description, assignee, task, dueDate];
}
