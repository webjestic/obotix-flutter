import 'package:flutter/material.dart';
import 'package:obotix/app/constants/app_constants.dart';
import 'package:obotix/app/locator/app_locator.dart';
import 'package:obotix/app/router/app_router.dart';
import 'package:obotix/app/logger/app_logger.dart';
import 'package:obotix/app/environment/app_environment.dart';
import 'dart:core';

void main() {
  startup();
  runApp(const MyApp());
}

void startup() {
  AppLog.initialize();
  AppEnvironment.initialize();
  AppLocator.initialize();
}

///
///
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: AppRouter.getRoutes(),
    );
  }
}
