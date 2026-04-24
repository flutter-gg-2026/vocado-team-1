import 'package:multiple_result/multiple_result.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/sign_up/domain/entities/sign_up_entity.dart';

abstract class SignUpRepositoryDomain {
    Future<Result<SignUpEntity, Failure>> getSignUp();
}
