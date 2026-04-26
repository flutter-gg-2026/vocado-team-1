import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/sub/sign_out/domain/repositories/sign_out_repository_domain.dart';

@lazySingleton
class SignOutUseCase {
  final SignOutRepositoryDomain _repositoryData;

  SignOutUseCase(this._repositoryData);
  Future<Result<void, Failure>> signOut() async {
    return _repositoryData.signOut();
  }
}
