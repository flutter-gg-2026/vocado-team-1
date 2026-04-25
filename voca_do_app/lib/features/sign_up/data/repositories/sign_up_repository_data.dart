import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:voca_do_app/core/errors/network_exceptions.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/core/common/enities/active_user_entity.dart';

import 'package:voca_do_app/features/sign_up/data/datasources/sign_up_remote_data_source.dart';
import 'package:voca_do_app/core/common/models/active_user_model.dart';
import 'package:voca_do_app/features/sign_up/domain/repositories/sign_up_repository_domain.dart';

@LazySingleton(as: SignUpRepositoryDomain)
class SignUpRepositoryData implements SignUpRepositoryDomain {
  final BaseSignUpRemoteDataSource remoteDataSource;

  SignUpRepositoryData(this.remoteDataSource);

  @override
  Future<Result<ActiveUserEntity, Failure>> signUp({
    required String fullName,
    required String email,
    required String password,
    required String role,
  }) async {
    try {
      final response = await remoteDataSource.signUp(
        fullName: fullName,
        email: email,
        password: password,
        role: role,
      );
      return Success(response.toEntity());
    } on Failure catch (error) {
      return Error(error);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
