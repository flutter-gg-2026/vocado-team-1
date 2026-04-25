import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/home/domain/entities/home_entity.dart';
import 'package:voca_do_app/features/home/domain/repositories/home_repository_domain.dart';

@lazySingleton
class HomeUseCase {
  final HomeRepositoryDomain _repositoryData;

  HomeUseCase(this._repositoryData);

  Future<Result<HomeEntity, Failure>> getHome() async {
    return _repositoryData.getHome();
  }

  Future<Result<HomeEntity, Failure>> getAdminHome() async {
    return _repositoryData.getAdminHome();
  }
}
