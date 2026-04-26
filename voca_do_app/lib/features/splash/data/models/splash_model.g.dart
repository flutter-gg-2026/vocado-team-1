// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SplashModel _$SplashModelFromJson(Map<String, dynamic> json) => _SplashModel(
  isLoggedIn: json['isLoggedIn'] as bool,
  userRole: json['userRole'] as String?,
);

Map<String, dynamic> _$SplashModelToJson(_SplashModel instance) =>
    <String, dynamic>{
      'isLoggedIn': instance.isLoggedIn,
      'userRole': instance.userRole,
    };
