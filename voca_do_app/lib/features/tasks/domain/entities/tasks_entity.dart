import 'package:equatable/equatable.dart';

class TasksEntity extends Equatable {
  final String id;
  final String title;
  final String description;
  final String status;
  final String? assignedTo;
  final String? assignedBy;
  final String? dueDate;
  final String? createdAt;

  const TasksEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    this.assignedTo,
    this.assignedBy,
    this.dueDate,
    this.createdAt,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        status,
        assignedTo,
        assignedBy,
        dueDate,
        createdAt,
      ];
}