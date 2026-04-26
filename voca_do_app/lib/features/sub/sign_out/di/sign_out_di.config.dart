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
import 'package:voca_do_app/features/sub/sign_out/data/datasources/sign_out_remote_data_source.dart'
    as _i561;
import 'package:voca_do_app/features/sub/sign_out/data/repositories/sign_out_repository_data.dart'
    as _i344;
import 'package:voca_do_app/features/sub/sign_out/domain/repositories/sign_out_repository_domain.dart'
    as _i246;
import 'package:voca_do_app/features/sub/sign_out/domain/use_cases/sign_out_use_case.dart'
    as _i554;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initSignOutSub({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i561.BaseSignOutRemoteDataSource>(
      () => _i561.SignOutRemoteDataSource(
        gh<_i523.LocalKeysService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i246.SignOutRepositoryDomain>(
      () =>
          _i344.SignOutRepositoryData(gh<_i561.BaseSignOutRemoteDataSource>()),
    );
    gh.lazySingleton<_i554.SignOutUseCase>(
      () => _i554.SignOutUseCase(gh<_i246.SignOutRepositoryDomain>()),
    );
    return this;
  }
}
