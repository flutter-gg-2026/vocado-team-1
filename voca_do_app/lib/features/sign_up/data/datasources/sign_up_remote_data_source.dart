import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:voca_do_app/core/services/local_keys_service.dart';
import 'package:voca_do_app/core/common/models/active_user_model.dart';
import 'package:voca_do_app/core/errors/network_exceptions.dart';

abstract class BaseSignUpRemoteDataSource {
  Future<ActiveUserModel> signUp({
    required String fullName,
    required String email,
    required String password,
    required String role,
  });
}

@LazySingleton(as: BaseSignUpRemoteDataSource)
class SignUpRemoteDataSource implements BaseSignUpRemoteDataSource {
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;
  final _storage = GetStorage();

  SignUpRemoteDataSource(this._localKeysService, this._supabase);

  @override
  Future<ActiveUserModel> signUp({
    required String fullName,
    required String email,
    required String password,
    required String role,
  }) async {
    try {
      final response = await _supabase.auth.signUp(
        password: password,
        email: email,
        data: {'full_name': fullName, 'role': role},
      );
      final user = response.user;
      if (user == null) {
        throw Exception('Sign up failed! try again.');
      }

      final authResponse = await _supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );
      if (authResponse.session != null) {
        await _saveUserSession(
          id: user.id,
          email: user.email!,
          name: fullName,
          role: role,
        );
      }
      return ActiveUserModel(
        id: user.id,
        email: user.email!,
        name: fullName,
        role: role,
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
