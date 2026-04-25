import 'package:get_it/get_it.dart';
import 'package:voca_do_app/core/di/configure_dependencies.config.dart';
import 'package:injectable/injectable.dart';
import 'package:voca_do_app/features/task_creator/di/task_creator_di.dart';

@InjectableInit(
  initializerName: 'init', 
  preferRelativeImports: true,
  asExtension: true, 
  generateForDir: ['lib/core'],
)

Future<void> configureDependencies() async {
  final getIt = GetIt.instance;
  getIt.init();
    configureTaskCreator(getIt);
}
