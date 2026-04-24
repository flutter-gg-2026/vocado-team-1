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
import 'package:voca_do_app/features/home/data/datasources/home_remote_data_source.dart'
    as _i743;
import 'package:voca_do_app/features/home/data/repositories/home_repository_data.dart'
    as _i722;
import 'package:voca_do_app/features/home/domain/repositories/home_repository_domain.dart'
    as _i596;
import 'package:voca_do_app/features/home/domain/use_cases/home_use_case.dart'
    as _i815;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initHome({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i743.BaseHomeRemoteDataSource>(
      () => _i743.HomeRemoteDataSource(
        gh<_i523.LocalKeysService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i596.HomeRepositoryDomain>(
      () => _i722.HomeRepositoryData(gh<_i743.BaseHomeRemoteDataSource>()),
    );
    gh.lazySingleton<_i815.HomeUseCase>(
      () => _i815.HomeUseCase(gh<_i596.HomeRepositoryDomain>()),
    );
    return this;
  }
}
