// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_user_home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TestUserHomeModel _$TestUserHomeModelFromJson(Map<String, dynamic> json) =>
    _TestUserHomeModel(
      id: json['id'] as String,
      userName: json['userName'] as String,
      emailName: json['emailName'] as String,
      roleName: json['roleName'] as String,
    );

Map<String, dynamic> _$TestUserHomeModelToJson(_TestUserHomeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'emailName': instance.emailName,
      'roleName': instance.roleName,
    };
