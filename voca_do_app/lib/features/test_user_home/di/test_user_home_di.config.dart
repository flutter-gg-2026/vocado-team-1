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
import 'package:voca_do_app/features/test_user_home/data/datasources/test_user_home_remote_data_source.dart'
    as _i916;
import 'package:voca_do_app/features/test_user_home/data/repositories/test_user_home_repository_data.dart'
    as _i986;
import 'package:voca_do_app/features/test_user_home/domain/repositories/test_user_home_repository_domain.dart'
    as _i13;
import 'package:voca_do_app/features/test_user_home/domain/use_cases/test_user_home_use_case.dart'
    as _i135;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initTestUserHome({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i916.BaseTestUserHomeRemoteDataSource>(
      () => _i916.TestUserHomeRemoteDataSource(
        gh<_i523.LocalKeysService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i13.TestUserHomeRepositoryDomain>(
      () => _i986.TestUserHomeRepositoryData(
        gh<_i916.BaseTestUserHomeRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i135.TestUserHomeUseCase>(
      () => _i135.TestUserHomeUseCase(gh<_i13.TestUserHomeRepositoryDomain>()),
    );
    return this;
  }
}
