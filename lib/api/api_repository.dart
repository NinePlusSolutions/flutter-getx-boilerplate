import 'dart:async';

import 'package:get/get.dart';

import '../models/request/auth_request/login_request/login_request.dart';
import '../models/response/base_response.dart';
import 'api.dart';

class ApiRepository extends GetxService {
  ApiRepository();

  final ApiProvider apiProvider = Get.find();

  Future<BaseResponse?> login(LoginRequest data) async {
    final res = await apiProvider.login('/mobile/login', data);
    if (res.statusCode == 200) {
      return BaseResponse.fromJson(res.body);
    }
    return null;
  }
}
