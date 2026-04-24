import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'sign_in_di.config.dart'; 

@InjectableInit(
  initializerName: 'initSignIn',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/sign_in'],
)
void configureSignIn(GetIt getIt) {
  getIt.initSignIn();
}
