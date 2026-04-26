import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/splash/domain/entities/splash_entity.dart';
import 'package:voca_do_app/features/splash/domain/repositories/splash_repository_domain.dart';


@lazySingleton
class SplashUseCase {
  final SplashRepositoryDomain _repositoryData;

  SplashUseCase(this._repositoryData);

   Future<Result<SplashEntity, Failure>> getSplash() async {
    return _repositoryData.getSplash();
  }
}
