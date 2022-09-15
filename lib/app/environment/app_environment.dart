///
///
///
///
import 'dart:io' show Platform;
import 'package:logging/logging.dart';

class AppEnvironment {
  ///
  static void initialize() {
    final log = Logger('startup');
    log.info('Running on ${getDevice()} device in the ${getEnv()} environment.');
  }

  static String getEnv() {
    const appEnv = String.fromEnvironment('appEnv', defaultValue: 'default');
    return appEnv;
  }

  static String getDevice() {
    String device = 'unknown';
    if (Platform.isAndroid) {
      device = 'android';
    } else if (Platform.isIOS) {
      device = 'ios';
    }
    return device;
  }
}
