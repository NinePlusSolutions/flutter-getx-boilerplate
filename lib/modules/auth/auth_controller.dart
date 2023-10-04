// ignore_for_file: deprecated_member_use, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../api/api_repository.dart';
import '../../routes/app_pages.dart';
import '../../shared/utils/focus.dart';
import '../../shared/utils/regex.dart';

class AuthController extends GetxController {
  final ApiRepository apiRepository;
  AuthController({required this.apiRepository});

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final prefs = Get.find<SharedPreferences>();

  int? type;
  Rx validate = false.obs;
  RxBool isPasswordVisible = true.obs;
  RxBool isEmailEntered = false.obs;
  RxBool isEmail = false.obs;
  RxBool isPhoneNumber = false.obs;

  TextEditingController loginPhoneNoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final loginPhoneNoControllerCode = TextEditingController();
  final loginPasswordController = TextEditingController();
  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();

  void hideKeyboard() {
    emailFocus.unfocus();
    passwordFocus.unfocus();
  }

  bool isEmailRegrex(String input) {
    return Regex.isEmail(input);
  }

  void togglePasswordVisibility(RxBool isVisible) =>
      isVisible.value = !isVisible.value;

  void login(BuildContext context) async {
    AppFocus.unfocus(context);
    if (loginFormKey.currentState!.validate()) {
      Get.offAllNamed(Routes.HOME);

      // final res = await apiRepository.login(
      //   LoginRequest(
      //     phoneNo: loginPhoneNoController.text,
      //     password: loginPasswordController.text,
      //   ),
      // );

      // if (res?.status == true) {
      //   if (res?.data.containsKey(ApiResponseKey.token)) {
      //     final token = res?.data[ApiResponseKey.token];
      //     final refreshToken = res?.data[ApiResponseKey.refreshToken];

      //     prefs.setString(StorageConstants.token, token);
      //     prefs.setString(StorageConstants.refreshToken, refreshToken);
      //     // Get.offAllNamed(Routes.HOME);
      //   } else {
      //     CommonWidget.toast(CommonConstants.someThingWrongPlsTryAgain.tr);
      //   }
      // }
    }
  }
}
