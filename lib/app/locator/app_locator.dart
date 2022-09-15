///
///
///
import 'package:get_it/get_it.dart';
import 'package:obotix/app/environment/app_environment.dart';

// This is our global ServiceLocator | https://pub.dev/packages/get_it/example
GetIt getIt = GetIt.instance;

class AppLocator {
  static void initialize() {
    getIt.registerSingleton<AppEnvironment>(AppEnvironment(), signalsReady: true);
  }
}
