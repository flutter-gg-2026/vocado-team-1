
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:voca_do_app/core/errors/network_exceptions.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/sign_in/domain/entities/sign_in_entity.dart';

import 'package:voca_do_app/features/sign_in/data/datasources/sign_in_remote_data_source.dart';
import 'package:voca_do_app/features/sign_in/data/models/sign_in_model.dart';
import 'package:voca_do_app/features/sign_in/domain/repositories/sign_in_repository_domain.dart';

@LazySingleton(as: SignInRepositoryDomain)
class SignInRepositoryData implements SignInRepositoryDomain{
  final BaseSignInRemoteDataSource remoteDataSource;


  SignInRepositoryData(this.remoteDataSource);

@override
  Future<Result<SignInEntity, Failure>> getSignIn() async {
    try {
      final response = await remoteDataSource.getSignIn();
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
