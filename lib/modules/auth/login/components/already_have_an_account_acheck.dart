import 'package:flutter/material.dart';
import 'package:flutter_getx_base/app_controller.dart';
import 'package:get/get.dart';

import '../../../../shared/constants/common.dart';
import '../../../../shared/widgets/custom_text_style.dart';

class AlreadyHaveAnAccountCheck extends GetView<AppController> {
  final bool login;
  final Function? press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            login
                ? CommonConstants.dontHaveAnAcount.tr
                : CommonConstants.alreadyHaveAnAccount.tr,
            style: CustomTextStyles.lableOnboadringBlack400,
          ),
          GestureDetector(
            onTap: press as void Function()?,
            child: Text(
                login
                    ? CommonConstants.btnSignUp.tr
                    : CommonConstants.btnSignIn.tr,
                style: CustomTextStyles.titleSignInBlue600),
          ),
        ],
      ),
    );
  }
}
