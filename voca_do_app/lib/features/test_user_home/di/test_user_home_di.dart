import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'test_user_home_di.config.dart'; 

@InjectableInit(
  initializerName: 'initTestUserHome',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/test_user_home'],
)
void configureTestUserHome(GetIt getIt) {
  getIt.initTestUserHome();
}
