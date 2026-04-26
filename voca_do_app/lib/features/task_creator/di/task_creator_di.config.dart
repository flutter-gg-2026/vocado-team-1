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
import 'package:voca_do_app/core/network/dio_client.dart' as _i473;
import 'package:voca_do_app/core/services/voice_recorder_service.dart' as _i285;
import 'package:voca_do_app/features/task_creator/data/datasources/task_creator_remote_data_source.dart'
    as _i381;
import 'package:voca_do_app/features/task_creator/data/repositories/task_creator_repository_data.dart'
    as _i540;
import 'package:voca_do_app/features/task_creator/domain/repositories/task_creator_repository_domain.dart'
    as _i157;
import 'package:voca_do_app/features/task_creator/domain/use_cases/task_creator_use_case.dart'
    as _i716;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initTaskCreator({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i381.BaseTaskCreatorRemoteDataSource>(
      () => _i381.TaskCreatorRemoteDataSource(
        gh<_i473.DioClient>(),
        gh<_i285.VoiceService>(),
      ),
    );
    gh.lazySingleton<_i157.TaskCreatorRepositoryDomain>(
      () => _i540.TaskCreatorRepositoryData(
        gh<_i381.BaseTaskCreatorRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i716.TaskCreatorUseCase>(
      () => _i716.TaskCreatorUseCase(gh<_i157.TaskCreatorRepositoryDomain>()),
    );
    return this;
  }
}
