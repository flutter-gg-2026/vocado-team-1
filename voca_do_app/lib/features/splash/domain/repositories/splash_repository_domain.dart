import 'package:multiple_result/multiple_result.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/splash/domain/entities/splash_entity.dart';

abstract class SplashRepositoryDomain {
    Future<Result<SplashEntity, Failure>> getSplash();
}
