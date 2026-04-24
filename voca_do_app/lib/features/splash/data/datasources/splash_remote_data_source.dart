import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:voca_do_app/core/services/local_keys_service.dart';
import 'package:voca_do_app/features/splash/data/models/splash_model.dart';
import 'package:voca_do_app/core/errors/network_exceptions.dart';


abstract class BaseSplashRemoteDataSource {
  Future<SplashModel> getSplash();
}


@LazySingleton(as: BaseSplashRemoteDataSource)
class SplashRemoteDataSource implements BaseSplashRemoteDataSource {
 
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;
  
  

   SplashRemoteDataSource(this._localKeysService, this._supabase);



    @override
  Future<SplashModel> getSplash() async {
    try {
      return SplashModel(id: 1, firstName: "Last Name", lastName: "First Name");
    } catch (error) {
     throw FailureExceptions.getException(error);
    }
  }
}
