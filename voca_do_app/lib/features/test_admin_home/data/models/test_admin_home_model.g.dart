// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_admin_home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TestAdminHomeModel _$TestAdminHomeModelFromJson(Map<String, dynamic> json) =>
    _TestAdminHomeModel(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$TestAdminHomeModelToJson(_TestAdminHomeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
