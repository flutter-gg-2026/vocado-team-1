// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActiveUserModel _$ActiveUserModelFromJson(Map<String, dynamic> json) =>
    _ActiveUserModel(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$ActiveUserModelToJson(_ActiveUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'role': instance.role,
    };
