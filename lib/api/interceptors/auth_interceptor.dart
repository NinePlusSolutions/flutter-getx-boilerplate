import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../shared/constants/storage.dart';

FutureOr<Request> authInterceptor(request) async {
  final prefs = await SharedPreferences.getInstance();
  final accessToken = prefs.getString(StorageConstants.token);

  request.headers['X-Requested-With'] = 'XMLHttpRequest';
  request.headers['Authorization'] = 'Bearer $accessToken';

  return request;
}
