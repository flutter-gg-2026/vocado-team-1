import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'task_generator_di.config.dart'; 

@InjectableInit(
  initializerName: 'initTaskGeneratorSub',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/sub/task_generator'],
)
void configureTaskGeneratorSub(GetIt getIt) {
  getIt.initTaskGeneratorSub();
}
