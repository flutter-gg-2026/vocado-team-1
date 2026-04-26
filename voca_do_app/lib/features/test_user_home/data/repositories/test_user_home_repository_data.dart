
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:voca_do_app/core/errors/network_exceptions.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/test_user_home/domain/entities/test_user_home_entity.dart';

import 'package:voca_do_app/features/test_user_home/data/datasources/test_user_home_remote_data_source.dart';
import 'package:voca_do_app/features/test_user_home/data/models/test_user_home_model.dart';
import 'package:voca_do_app/features/test_user_home/domain/repositories/test_user_home_repository_domain.dart';

@LazySingleton(as: TestUserHomeRepositoryDomain)
class TestUserHomeRepositoryData implements TestUserHomeRepositoryDomain{
  final BaseTestUserHomeRemoteDataSource remoteDataSource;


  TestUserHomeRepositoryData(this.remoteDataSource);

@override
  Future<Result<TestUserHomeEntity, Failure>> getTestUserHome() async {
    try {
      final response = await remoteDataSource.getTestUserHome();
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
