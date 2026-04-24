import 'package:voca_do_app/features/sign_in/domain/entities/sign_in_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_in_model.freezed.dart';
part 'sign_in_model.g.dart';

@freezed
abstract class SignInModel with _$SignInModel {
  const factory SignInModel({
    required int id,
    required String firstName,
    required String lastName,
    
  }) = _SignInModel;

  factory SignInModel.fromJson(Map<String, Object?> json) => _$SignInModelFromJson(json);
}



extension SignInModelMapper on SignInModel {
  SignInEntity toEntity() {
    return SignInEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
