import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voca_do_app/features/sub/task_generator/domain/entities/task_entity.dart';
part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
abstract class TaskModel with _$TaskModel {
  const factory TaskModel({
    required String id,
    required String task,
    required String? assignee,
    required String? dueDate,
    required String? description,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, Object?> json) =>
      _$TaskModelFromJson(json);
}

extension TaskModelMapper on TaskModel {
  TaskEntity toEntity() {
    return TaskEntity(
      id: id,
      task: task,
      assignee: assignee,
      dueDate: dueDate,
      description: description,
    );
  }
}
