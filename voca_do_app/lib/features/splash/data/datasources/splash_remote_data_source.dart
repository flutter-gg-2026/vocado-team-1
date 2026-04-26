import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:voca_do_app/core/services/local_keys_service.dart';

abstract class BaseSplashRemoteDataSource {
  Future<bool> checkSessionStatus();
  Future<String?> getUserRole();
}

@LazySingleton(as: BaseSplashRemoteDataSource)
class SplashRemoteDataSource implements BaseSplashRemoteDataSource {
  final LocalKeysService _localKeysService;
  final _storage = GetStorage();

  SplashRemoteDataSource(this._localKeysService);

  @override
  Future<bool> checkSessionStatus() async {
    return _storage.read<bool>(_localKeysService.isLoggedIn) ?? false;
  }

  @override
  Future<String?> getUserRole() async {
    return _storage.read<String>(_localKeysService.userRole);
  }
}
