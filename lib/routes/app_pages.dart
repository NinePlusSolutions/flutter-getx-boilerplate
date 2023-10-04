import 'package:flutter_getx_base/modules/auth/auth_binding.dart';
import 'package:flutter_getx_base/modules/auth/login/login_screen.dart';
import 'package:flutter_getx_base/modules/main/home_binding.dart';
import 'package:flutter_getx_base/modules/main/home_screen.dart';
import 'package:flutter_getx_base/modules/splash/splash_binding.dart';
import 'package:flutter_getx_base/modules/splash/splash_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.LOG_IN,
      page: () => LoginScreen(),
      binding: AuthBinding(),
    ),
  ];
}
