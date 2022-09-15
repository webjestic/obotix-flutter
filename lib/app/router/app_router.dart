///
///
///
import 'package:obotix/pages/home/home_page.dart';
import 'package:obotix/pages/about/about_page.dart';
import 'package:obotix/app/resources/app_strings.dart';

class AppRouter {
  dynamic getRoutes() {
    return {
      '/': (context) => MyHomePage(title: AppStrings.myHomePage),
      '/about': (context) => AboutPage(title: AppStrings.aboutPage),
    };
  }
}
