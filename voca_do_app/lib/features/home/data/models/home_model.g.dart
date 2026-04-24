// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => _HomeModel(
  newTasks: (json['newTasks'] as num).toInt(),
  inProgressTasks: (json['inProgressTasks'] as num).toInt(),
  lateTasks: (json['lateTasks'] as num).toInt(),
);

Map<String, dynamic> _$HomeModelToJson(_HomeModel instance) =>
    <String, dynamic>{
      'newTasks': instance.newTasks,
      'inProgressTasks': instance.inProgressTasks,
      'lateTasks': instance.lateTasks,
    };
