import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/core/common/enities/active_user_entity.dart';
import 'package:voca_do_app/features/sign_up/domain/repositories/sign_up_repository_domain.dart';

@lazySingleton
class SignUpUseCase {
  final SignUpRepositoryDomain _repositoryData;

  SignUpUseCase(this._repositoryData);

  Future<Result<ActiveUserEntity, Failure>> signUp({
    required String fullName,
    required String email,
    required String password,
    required String role,
  }) async {
    return await _repositoryData.signUp(
      fullName: fullName,
      email: email,
      password: password,
      role: role,
    );
  }
}
