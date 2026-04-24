import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/sign_in/domain/entities/sign_in_entity.dart';
import 'package:voca_do_app/features/sign_in/domain/repositories/sign_in_repository_domain.dart';


@lazySingleton
class SignInUseCase {
  final SignInRepositoryDomain _repositoryData;

  SignInUseCase(this._repositoryData);

   Future<Result<SignInEntity, Failure>> getSignIn() async {
    return _repositoryData.getSignIn();
  }
}
