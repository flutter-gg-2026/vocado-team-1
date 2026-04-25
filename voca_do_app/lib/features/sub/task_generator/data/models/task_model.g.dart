// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TaskModel _$TaskModelFromJson(Map<String, dynamic> json) => _TaskModel(
  id: json['id'] as String,
  task: json['task'] as String,
  assignee: json['assignee'] as String?,
  dueDate: json['dueDate'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$TaskModelToJson(_TaskModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'task': instance.task,
      'assignee': instance.assignee,
      'dueDate': instance.dueDate,
      'description': instance.description,
    };
