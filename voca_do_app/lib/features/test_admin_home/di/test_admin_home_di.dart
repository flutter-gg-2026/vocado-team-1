import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'test_admin_home_di.config.dart'; 

@InjectableInit(
  initializerName: 'initTestAdminHome',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/test_admin_home'],
)
void configureTestAdminHome(GetIt getIt) {
  getIt.initTestAdminHome();
}
