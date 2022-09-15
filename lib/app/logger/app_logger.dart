import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

class AppLog {
  static void initialize() {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((record) {
      if (kDebugMode) {
        /// CODE_KEEP: preserving commented code for easy reference
        // print('${record.level.name}: ${record.time}: ${record.message}');
        print('${record.level.name}: ${record.message}');
      }
    });
  }
}
