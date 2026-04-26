import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:voca_do_app/core/errors/network_exceptions.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/splash/domain/entities/splash_entity.dart';
import 'package:voca_do_app/features/splash/data/datasources/splash_remote_data_source.dart';
import 'package:voca_do_app/features/splash/domain/repositories/splash_repository_domain.dart';

@LazySingleton(as: SplashRepositoryDomain)
class SplashRepositoryData implements SplashRepositoryDomain {
  final BaseSplashRemoteDataSource remoteDataSource;

  SplashRepositoryData(this.remoteDataSource);

  @override
  Future<Result<SplashEntity, Failure>> getSplash() async {
    try {
      final isLoggedIn = await remoteDataSource.checkSessionStatus();
      final userRole = await remoteDataSource.getUserRole();
      final splashEntity = SplashEntity(
        isLoggedIn: isLoggedIn,
        userRole: userRole,
      );
      return Success(splashEntity);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
