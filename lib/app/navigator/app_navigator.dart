import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

class AppNavigator extends Navigator {
  const AppNavigator({Key? key}) : super(key: key);

  @optionalTypeArgs
  static Future<T?> pushNamed<T extends Object?>(
    BuildContext context,
    String routeName, {
    Object? arguments,
  }) {
    final log = Logger('_MyHomePageState');
    log.info('Route: $routeName');
    return Navigator.of(context).pushNamed<T>(routeName, arguments: arguments);
  }
}
