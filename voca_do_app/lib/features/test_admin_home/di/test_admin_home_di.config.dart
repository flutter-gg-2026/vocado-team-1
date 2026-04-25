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
import 'package:voca_do_app/features/test_admin_home/data/datasources/test_admin_home_remote_data_source.dart'
    as _i602;
import 'package:voca_do_app/features/test_admin_home/data/repositories/test_admin_home_repository_data.dart'
    as _i291;
import 'package:voca_do_app/features/test_admin_home/domain/repositories/test_admin_home_repository_domain.dart'
    as _i67;
import 'package:voca_do_app/features/test_admin_home/domain/use_cases/test_admin_home_use_case.dart'
    as _i921;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initTestAdminHome({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i602.BaseTestAdminHomeRemoteDataSource>(
      () => _i602.TestAdminHomeRemoteDataSource(
        gh<_i523.LocalKeysService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i67.TestAdminHomeRepositoryDomain>(
      () => _i291.TestAdminHomeRepositoryData(
        gh<_i602.BaseTestAdminHomeRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i921.TestAdminHomeUseCase>(
      () =>
          _i921.TestAdminHomeUseCase(gh<_i67.TestAdminHomeRepositoryDomain>()),
    );
    return this;
  }
}
