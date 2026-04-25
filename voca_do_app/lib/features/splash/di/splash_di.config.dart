// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:voca_do_app/core/services/local_keys_service.dart' as _i523;
import 'package:voca_do_app/features/splash/data/datasources/splash_remote_data_source.dart'
    as _i713;
import 'package:voca_do_app/features/splash/data/repositories/splash_repository_data.dart'
    as _i760;
import 'package:voca_do_app/features/splash/domain/repositories/splash_repository_domain.dart'
    as _i250;
import 'package:voca_do_app/features/splash/domain/use_cases/splash_use_case.dart'
    as _i984;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initSplash({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i713.BaseSplashRemoteDataSource>(
      () => _i713.SplashRemoteDataSource(gh<_i523.LocalKeysService>()),
    );
    gh.lazySingleton<_i250.SplashRepositoryDomain>(
      () => _i760.SplashRepositoryData(gh<_i713.BaseSplashRemoteDataSource>()),
    );
    gh.lazySingleton<_i984.SplashUseCase>(
      () => _i984.SplashUseCase(gh<_i250.SplashRepositoryDomain>()),
    );
    return this;
  }
}
