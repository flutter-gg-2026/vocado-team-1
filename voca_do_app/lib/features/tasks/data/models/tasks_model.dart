import 'package:voca_do_app/features/tasks/domain/entities/tasks_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tasks_model.freezed.dart';

@freezed
abstract class TasksModel with _$TasksModel {
  const factory TasksModel({
    required String id,
    required String title,
    required String description,
    required String status,
    String? assignedTo,
    String? assignedBy,
    String? dueDate,
    String? createdAt,
  }) = _TasksModel;

  factory TasksModel.fromJson(Map<String, Object?> json) {
    return TasksModel(
      id: json['id'].toString(),
      title: json['title'].toString(),
      description: json['description'].toString(),
      status: json['status'].toString(),
      assignedTo: json['assigned_to']?.toString(),
      assignedBy: json['assigned_by']?.toString(),
      dueDate: json['due_date']?.toString(),
      createdAt: json['created_at']?.toString(),
    );
  }
}

extension TasksModelMapper on TasksModel {
  TasksEntity toEntity() {
    return TasksEntity(
      id: id,
      title: title,
      description: description,
      status: status,
      assignedTo: assignedTo,
      assignedBy: assignedBy,
      dueDate: dueDate,
      createdAt: createdAt,
    );
  }
}