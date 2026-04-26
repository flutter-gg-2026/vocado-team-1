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
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;
import 'package:voca_do_app/core/services/local_keys_service.dart' as _i523;
import 'package:voca_do_app/features/sign_in/data/datasources/sign_in_remote_data_source.dart'
    as _i720;
import 'package:voca_do_app/features/sign_in/data/repositories/sign_in_repository_data.dart'
    as _i20;
import 'package:voca_do_app/features/sign_in/domain/repositories/sign_in_repository_domain.dart'
    as _i924;
import 'package:voca_do_app/features/sign_in/domain/use_cases/sign_in_use_case.dart'
    as _i472;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initSignIn({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i720.BaseSignInRemoteDataSource>(
      () => _i720.SignInRemoteDataSource(
        gh<_i523.LocalKeysService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i924.SignInRepositoryDomain>(
      () => _i20.SignInRepositoryData(gh<_i720.BaseSignInRemoteDataSource>()),
    );
    gh.lazySingleton<_i472.SignInUseCase>(
      () => _i472.SignInUseCase(gh<_i924.SignInRepositoryDomain>()),
    );
    return this;
  }
}
