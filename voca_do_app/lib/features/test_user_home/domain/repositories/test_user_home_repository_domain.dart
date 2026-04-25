import 'package:multiple_result/multiple_result.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/test_user_home/domain/entities/test_user_home_entity.dart';

abstract class TestUserHomeRepositoryDomain {
    Future<Result<TestUserHomeEntity, Failure>> getTestUserHome();
}
