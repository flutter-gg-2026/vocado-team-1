// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SplashModel _$SplashModelFromJson(Map<String, dynamic> json) => _SplashModel(
  id: (json['id'] as num).toInt(),
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
);

Map<String, dynamic> _$SplashModelToJson(_SplashModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
