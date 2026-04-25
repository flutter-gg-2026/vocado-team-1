import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:voca_do_app/core/services/local_keys_service.dart';
import 'package:voca_do_app/features/test_user_home/data/models/test_user_home_model.dart';
import 'package:voca_do_app/core/errors/network_exceptions.dart';


abstract class BaseTestUserHomeRemoteDataSource {
  Future<TestUserHomeModel> getTestUserHome();
}


@LazySingleton(as: BaseTestUserHomeRemoteDataSource)
class TestUserHomeRemoteDataSource implements BaseTestUserHomeRemoteDataSource {
 
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;
  
  

   TestUserHomeRemoteDataSource(this._localKeysService, this._supabase);



    @override
  Future<TestUserHomeModel> getTestUserHome() async {
    try {
      return TestUserHomeModel(id: 1, firstName: "Last Name", lastName: "First Name");
    } catch (error) {
     throw FailureExceptions.getException(error);
    }
  }
}
