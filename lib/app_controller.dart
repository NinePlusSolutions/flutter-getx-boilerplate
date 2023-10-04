import 'package:flutter_getx_base/shared/utils/app_flavor_helper.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  RxBool isDarkModeOn = false.obs;
  RxBool isNotificationOn = true.obs;
  RxString currentRoute = ''.obs;

  final Rx<AppFlavor> currentFlavor;
  AppController(AppFlavor flavor) : currentFlavor = flavor.obs;

  void updateCurrentRoute() {
    currentRoute.value = Get.currentRoute;
  }

  void toggleDarkMode() {
    isDarkModeOn.toggle();
  }

  void toggleNotificationMode() {
    isNotificationOn.toggle();
  }

  String get environmentLabel {
    switch (currentFlavor.value) {
      case AppFlavor.development:
        return "UAT";
      case AppFlavor.production:
        return "";
      default:
        return "";
    }
  }
}
