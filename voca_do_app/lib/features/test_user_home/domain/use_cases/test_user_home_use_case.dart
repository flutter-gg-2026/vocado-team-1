import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/test_user_home/domain/entities/test_user_home_entity.dart';
import 'package:voca_do_app/features/test_user_home/domain/repositories/test_user_home_repository_domain.dart';


@lazySingleton
class TestUserHomeUseCase {
  final TestUserHomeRepositoryDomain _repositoryData;

  TestUserHomeUseCase(this._repositoryData);

   Future<Result<TestUserHomeEntity, Failure>> getTestUserHome() async {
    return _repositoryData.getTestUserHome();
  }
}
