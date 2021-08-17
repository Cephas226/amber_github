import 'package:ambulanceHailerDriver/pages/authentification/login.dart';
import 'package:ambulanceHailerDriver/pages/home/home_page.dart';
import 'package:ambulanceHailerDriver/splash_screen/splash_screen.dart';
import 'package:ambulanceHailerDriver/splash_screen/splash_screen_binding.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage()
    ),
    GetPage(
        name: AppRoutes.LOGIN,
        page: () => Login()
    ),
    GetPage(
        name: AppRoutes.SPLASH_SCREEN,
        binding: SplashScreenBinding(),
        page: () => SplashScreen()
    ),
  ];
}
