// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_user_home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TestUserHomeModel _$TestUserHomeModelFromJson(Map<String, dynamic> json) =>
    _TestUserHomeModel(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$TestUserHomeModelToJson(_TestUserHomeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
