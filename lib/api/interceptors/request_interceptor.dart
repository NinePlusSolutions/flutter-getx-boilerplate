import 'dart:async';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../shared/constants/storage.dart';

FutureOr<Request> requestInterceptor(Request request) async {
  final prefs = await SharedPreferences.getInstance();
  final accessToken = prefs.getString(StorageConstants.token);

  request.headers['X-Requested-With'] = 'XMLHttpRequest';
  request.headers['Authorization'] = 'Bearer $accessToken';

  if (!request.headers.containsKey('type') && (request.method != "get")) {
    await EasyLoading.show(status: 'loading...');
  }

  return request;
}
