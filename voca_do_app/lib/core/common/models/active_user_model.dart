import 'package:voca_do_app/core/common/enities/active_user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'active_user_model.freezed.dart';
part 'active_user_model.g.dart';

@freezed
abstract class ActiveUserModel with _$ActiveUserModel {
  const factory ActiveUserModel({
    required String id,
    required String email,
    required String name,
    required String role,
  }) = _ActiveUserModel;

  factory ActiveUserModel.fromJson(Map<String, Object?> json) =>
      _$ActiveUserModelFromJson(json);
}

extension SignUpModelMapper on ActiveUserModel {
  ActiveUserEntity toEntity() {
    return ActiveUserEntity(id: id, email: email, name: name, role: role);
  }
}
