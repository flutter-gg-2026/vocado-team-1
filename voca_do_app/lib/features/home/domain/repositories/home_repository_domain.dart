import 'package:multiple_result/multiple_result.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/home/domain/entities/home_entity.dart';

abstract class HomeRepositoryDomain {
  Future<Result<HomeEntity, Failure>> getHome();
  Future<Result<HomeEntity, Failure>> getAdminHome();
}
