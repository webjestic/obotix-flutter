import 'package:flutter/material.dart';
import 'package:obotix/app/resources/app_strings.dart';
import 'package:obotix/app/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static AppRouter appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle, // 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: appRouter.getRoutes(),
    );
  }
}
