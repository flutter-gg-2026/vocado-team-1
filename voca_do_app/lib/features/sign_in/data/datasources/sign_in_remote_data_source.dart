import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:voca_do_app/core/services/local_keys_service.dart';
import 'package:voca_do_app/features/sign_in/data/models/sign_in_model.dart';
import 'package:voca_do_app/core/errors/network_exceptions.dart';


abstract class BaseSignInRemoteDataSource {
  Future<SignInModel> getSignIn();
}


@LazySingleton(as: BaseSignInRemoteDataSource)
class SignInRemoteDataSource implements BaseSignInRemoteDataSource {
 
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;
  
  

   SignInRemoteDataSource(this._localKeysService, this._supabase);



    @override
  Future<SignInModel> getSignIn() async {
    try {
      return SignInModel(id: 1, firstName: "Last Name", lastName: "First Name");
    } catch (error) {
     throw FailureExceptions.getException(error);
    }
  }
}
