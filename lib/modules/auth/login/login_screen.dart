// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_getx_base/shared/utils/size_utils.dart';
import 'package:flutter_getx_base/shared/widgets/normal_button.dart';
import 'package:get/get.dart';

import '../../../shared/constants/colors.dart';
import '../Login/components/login_form.dart';
import '../auth_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final AuthController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: NormalButton(
        onPressed: () => controller.hideKeyboard(),
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstants.backgroundColor,
            body: Padding(
              padding: getPadding(
                left: 20,
                right: 20,
                top: 105,
              ),
              child: LoginForm(),
            )),
      ),
    );
  }
}
