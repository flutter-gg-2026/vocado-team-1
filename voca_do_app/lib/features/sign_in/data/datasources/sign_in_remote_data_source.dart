import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:voca_do_app/core/common/models/active_user_model.dart';
import 'package:voca_do_app/core/services/local_keys_service.dart';
import 'package:voca_do_app/core/errors/network_exceptions.dart';

abstract class BaseSignInRemoteDataSource {
  Future<ActiveUserModel> signIn({
    required String email,
    required String password,
  });
}

@LazySingleton(as: BaseSignInRemoteDataSource)
class SignInRemoteDataSource implements BaseSignInRemoteDataSource {
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;
  final _storage = GetStorage();
  SignInRemoteDataSource(this._localKeysService, this._supabase);

  @override
  Future<ActiveUserModel> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final authResponse = await _supabase.auth.signInWithPassword(
        password: password,
        email: email,
      );
      final user = authResponse.user;
      if (user == null) throw Exception('Sign in failed');

      final roleData = await _supabase
          .from('user_role')
          .select('role')
          .eq('id', user.id)
          .single();
      final userRole = roleData['role'] as String;
      await _saveUserSession(
        id: user.id,
        email: user.email!,
        name: user.userMetadata?['full_name'] ?? '',
        role: userRole,
      );
      return ActiveUserModel(
        id: user.id,
        email: user.email!,
        name: user.userMetadata?['full_name'] ?? '',
        role: userRole,
      );
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  Future<void> _saveUserSession({
    required String id,
    required String email,
    required String name,
    required String role,
  }) async {
    await _storage.write(_localKeysService.userId, id);
    await _storage.write(_localKeysService.userEmail, email);
    await _storage.write(_localKeysService.userName, name);
    await _storage.write(_localKeysService.userRole, role);
    await _storage.write(_localKeysService.isLoggedIn, true);
  }
}
