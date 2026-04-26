import 'package:multiple_result/multiple_result.dart';
import 'package:voca_do_app/core/errors/failure.dart';
import 'package:voca_do_app/features/test_admin_home/domain/entities/test_admin_home_entity.dart';

abstract class TestAdminHomeRepositoryDomain {
    Future<Result<TestAdminHomeEntity, Failure>> getTestAdminHome();
}
