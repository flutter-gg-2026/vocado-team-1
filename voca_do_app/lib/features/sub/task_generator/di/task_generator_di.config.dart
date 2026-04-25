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
import 'package:voca_do_app/features/sub/task_generator/data/datasources/task_generator_remote_data_source.dart'
    as _i1019;
import 'package:voca_do_app/features/sub/task_generator/data/repositories/task_generator_repository_data.dart'
    as _i1028;
import 'package:voca_do_app/features/sub/task_generator/domain/repositories/task_generator_repository_domain.dart'
    as _i173;
import 'package:voca_do_app/features/sub/task_generator/domain/use_cases/task_generator_use_case.dart'
    as _i966;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initTaskGeneratorSub({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i1019.BaseTaskGeneratorRemoteDataSource>(
      () => _i1019.TaskGeneratorRemoteDataSource(
        gh<_i523.LocalKeysService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i173.TaskGeneratorRepositoryDomain>(
      () => _i1028.TaskGeneratorRepositoryData(
        gh<_i1019.BaseTaskGeneratorRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i966.TaskGeneratorUseCase>(
      () =>
          _i966.TaskGeneratorUseCase(gh<_i173.TaskGeneratorRepositoryDomain>()),
    );
    return this;
  }
}
