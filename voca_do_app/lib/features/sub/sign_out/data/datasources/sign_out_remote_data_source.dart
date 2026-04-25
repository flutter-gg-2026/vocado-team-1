import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:voca_do_app/core/services/local_keys_service.dart';
import 'package:voca_do_app/core/errors/network_exceptions.dart';

abstract class BaseSignOutRemoteDataSource {
  Future<void> signOut();
}

@LazySingleton(as: BaseSignOutRemoteDataSource)
class SignOutRemoteDataSource implements BaseSignOutRemoteDataSource {
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;
  final _storage = GetStorage();

  SignOutRemoteDataSource(this._localKeysService, this._supabase);

  @override
  Future<void> signOut() async {
    try {
      
      await _supabase.auth.signOut();

      await _storage.remove(_localKeysService.userId);
      await _storage.remove(_localKeysService.userEmail);
      await _storage.remove(_localKeysService.userName);
      await _storage.remove(_localKeysService.userRole);
      await _storage.write(_localKeysService.isLoggedIn, false);
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
