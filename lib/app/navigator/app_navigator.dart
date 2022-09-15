import 'package:flutter/material.dart';

class AppNavigator extends Navigator {
  const AppNavigator({Key? key}) : super(key: key);

  @optionalTypeArgs
  static Future<T?> pushNamed<T extends Object?>(
    BuildContext context,
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(context).pushNamed<T>(routeName, arguments: arguments);
  }
}
