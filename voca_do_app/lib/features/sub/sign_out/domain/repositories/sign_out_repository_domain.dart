import 'package:multiple_result/multiple_result.dart';
import 'package:voca_do_app/core/errors/failure.dart';

abstract class SignOutRepositoryDomain {
    Future<Result<void, Failure>> signOut();
}
