// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TasksModel _$TasksModelFromJson(Map<String, dynamic> json) => _TasksModel(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  status: json['status'] as String,
  assignedTo: json['assignedTo'] as String?,
  assignedBy: json['assignedBy'] as String?,
  dueDate: json['dueDate'] as String?,
  createdAt: json['createdAt'] as String?,
);

Map<String, dynamic> _$TasksModelToJson(_TasksModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'assignedTo': instance.assignedTo,
      'assignedBy': instance.assignedBy,
      'dueDate': instance.dueDate,
      'createdAt': instance.createdAt,
    };
