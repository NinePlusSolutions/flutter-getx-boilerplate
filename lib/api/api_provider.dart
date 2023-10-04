import 'package:get/get.dart';

import '../models/request/auth_request/login_request/login_request.dart';
import '../shared/utils/app_flavor_helper.dart';
import 'base_provider.dart';

class ApiProvider extends BaseProvider {
  ApiProvider(AppFlavor flavor) : super(flavor);
  static ApiProvider get to => Get.find();

  Future<Response> login(String path, LoginRequest data) {
    return post(path, data.toJson());
  }
}
