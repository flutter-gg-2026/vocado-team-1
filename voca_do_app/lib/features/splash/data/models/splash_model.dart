import 'package:voca_do_app/features/splash/domain/entities/splash_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'splash_model.freezed.dart';
part 'splash_model.g.dart';

@freezed
abstract class SplashModel with _$SplashModel {
  const factory SplashModel({
  required bool isLoggedIn,
  required String? userRole,
    
  }) = _SplashModel;

  factory SplashModel.fromJson(Map<String, Object?> json) => _$SplashModelFromJson(json);
}



extension SplashModelMapper on SplashModel {
  SplashEntity toEntity() {
    return SplashEntity(isLoggedIn: isLoggedIn,userRole: userRole);
  }
  }
