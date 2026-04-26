import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:voca_do_app/core/common/enities/active_user_entity.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/sign_in/domain/repositories/sign_in_repository_domain.dart';

@lazySingleton
class SignInUseCase {
  final SignInRepositoryDomain _repositoryData;

  SignInUseCase(this._repositoryData);

  Future<Result<ActiveUserEntity, Failure>> signIn({
    required String email,
    required String password,
  }) async {
    return _repositoryData.signIn(email: email, password: password);
  }
}
