import 'package:multiple_result/multiple_result.dart';
import 'package:voca_do_app/core/common/enities/active_user_entity.dart';
import 'package:voca_do_app/core/errors/failure.dart';

abstract class SignInRepositoryDomain {
    Future<Result<ActiveUserEntity, Failure>> signIn({
    required String email,
    required String password,
  });
}
