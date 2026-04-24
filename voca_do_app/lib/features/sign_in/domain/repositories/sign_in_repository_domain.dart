import 'package:multiple_result/multiple_result.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/sign_in/domain/entities/sign_in_entity.dart';

abstract class SignInRepositoryDomain {
    Future<Result<SignInEntity, Failure>> getSignIn();
}
