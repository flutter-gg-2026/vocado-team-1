
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:voca_do_app/core/errors/network_exceptions.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/test_admin_home/domain/entities/test_admin_home_entity.dart';

import 'package:voca_do_app/features/test_admin_home/data/datasources/test_admin_home_remote_data_source.dart';
import 'package:voca_do_app/features/test_admin_home/data/models/test_admin_home_model.dart';
import 'package:voca_do_app/features/test_admin_home/domain/repositories/test_admin_home_repository_domain.dart';

@LazySingleton(as: TestAdminHomeRepositoryDomain)
class TestAdminHomeRepositoryData implements TestAdminHomeRepositoryDomain{
  final BaseTestAdminHomeRemoteDataSource remoteDataSource;


  TestAdminHomeRepositoryData(this.remoteDataSource);

@override
  Future<Result<TestAdminHomeEntity, Failure>> getTestAdminHome() async {
    try {
      final response = await remoteDataSource.getTestAdminHome();
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
