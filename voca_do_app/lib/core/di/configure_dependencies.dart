import 'package:get_it/get_it.dart';
import 'package:voca_do_app/core/di/configure_dependencies.config.dart';
import 'package:injectable/injectable.dart';
import 'package:voca_do_app/features/sign_up/di/sign_up_di.dart';
import 'package:voca_do_app/features/sign_in/di/sign_in_di.dart';
import 'package:voca_do_app/features/splash/di/splash_di.dart';
import 'package:voca_do_app/features/test_admin_home/di/test_admin_home_di.dart';
import 'package:voca_do_app/features/test_user_home/di/test_user_home_di.dart';

@InjectableInit(
  initializerName: 'init', 
  preferRelativeImports: true,
  asExtension: true, 
  generateForDir: ['lib/core'],
)

Future<void> configureDependencies() async {
  final getIt = GetIt.instance;
  getIt.init();
    configureSignUp(getIt);
    configureSignIn(getIt);
    configureSplash(getIt);
    configureTestAdminHome(getIt);
    configureTestUserHome(getIt);
}
