import 'package:multiple_result/multiple_result.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/core/common/enities/active_user_entity.dart';

abstract class SignUpRepositoryDomain {
    Future<Result<ActiveUserEntity, Failure>> signUp({
    required String fullName,
    required String email,
    required String password,
    required String role,
  }) ;
}
