import 'package:voca_do_app/features/test_admin_home/domain/entities/test_admin_home_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'test_admin_home_model.freezed.dart';
part 'test_admin_home_model.g.dart';

@freezed
abstract class TestAdminHomeModel with _$TestAdminHomeModel {
  const factory TestAdminHomeModel({
    required int id,
    required String firstName,
    required String lastName,
    
  }) = _TestAdminHomeModel;

  factory TestAdminHomeModel.fromJson(Map<String, Object?> json) => _$TestAdminHomeModelFromJson(json);
}



extension TestAdminHomeModelMapper on TestAdminHomeModel {
  TestAdminHomeEntity toEntity() {
    return TestAdminHomeEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
