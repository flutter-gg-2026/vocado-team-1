// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignUpModel _$SignUpModelFromJson(Map<String, dynamic> json) => _SignUpModel(
  id: json['id'] as String,
  email: json['email'] as String,
  name: json['name'] as String,
  role: json['role'] as String,
);

Map<String, dynamic> _$SignUpModelToJson(_SignUpModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'role': instance.role,
    };
