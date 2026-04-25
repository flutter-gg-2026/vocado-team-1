import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/test_admin_home/domain/entities/test_admin_home_entity.dart';
import 'package:voca_do_app/features/test_admin_home/domain/repositories/test_admin_home_repository_domain.dart';


@lazySingleton
class TestAdminHomeUseCase {
  final TestAdminHomeRepositoryDomain _repositoryData;

  TestAdminHomeUseCase(this._repositoryData);

   Future<Result<TestAdminHomeEntity, Failure>> getTestAdminHome() async {
    return _repositoryData.getTestAdminHome();
  }
}
