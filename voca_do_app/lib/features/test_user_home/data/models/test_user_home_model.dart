import 'package:voca_do_app/features/test_user_home/domain/entities/test_user_home_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'test_user_home_model.freezed.dart';
part 'test_user_home_model.g.dart';

@freezed
abstract class TestUserHomeModel with _$TestUserHomeModel {
  const factory TestUserHomeModel({
    required String id,
    required String userName,
    required String emailName,
     required String roleName,
    
  }) = _TestUserHomeModel;

  factory TestUserHomeModel.fromJson(Map<String, Object?> json) => _$TestUserHomeModelFromJson(json);
}



extension TestUserHomeModelMapper on TestUserHomeModel {
  TestUserHomeEntity toEntity() {
    return TestUserHomeEntity(id: id, userName: userName, emailName: emailName,roleName:roleName);
  }
  }
