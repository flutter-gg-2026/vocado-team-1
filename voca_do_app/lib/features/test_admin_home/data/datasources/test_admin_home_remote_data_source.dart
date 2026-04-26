import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:voca_do_app/core/services/local_keys_service.dart';
import 'package:voca_do_app/features/test_admin_home/data/models/test_admin_home_model.dart';
import 'package:voca_do_app/core/errors/network_exceptions.dart';


abstract class BaseTestAdminHomeRemoteDataSource {
  Future<TestAdminHomeModel> getTestAdminHome();
}


@LazySingleton(as: BaseTestAdminHomeRemoteDataSource)
class TestAdminHomeRemoteDataSource implements BaseTestAdminHomeRemoteDataSource {
 
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;
  
  

   TestAdminHomeRemoteDataSource(this._localKeysService, this._supabase);



    @override
  Future<TestAdminHomeModel> getTestAdminHome() async {
    try {
      return TestAdminHomeModel(id: 1, firstName: "Last Name", lastName: "First Name");
    } catch (error) {
     throw FailureExceptions.getException(error);
    }
  }
}
