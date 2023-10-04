import 'package:flutter_getx_base/shared/utils/app_flavor_helper.dart';
import 'package:get/get.dart';

import 'shared/services/services.dart';

class DenpendencyInjection {
  static Future<void> init() async {
    await Get.putAsync(() => StorageService().init());
  }

  static Future<void> inject(AppFlavor appFlavor) async {
    Get.put<AppFlavor>(appFlavor);
  }
}
