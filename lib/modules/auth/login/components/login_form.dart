// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_getx_base/app_controller.dart';
import 'package:flutter_getx_base/modules/auth/auth_controller.dart';
import 'package:flutter_getx_base/modules/auth/login/components/or_divider.dart';
import 'package:flutter_getx_base/modules/auth/login/components/socal_sign_up.dart';
import 'package:flutter_getx_base/shared/constants/image_constant.dart';
import 'package:flutter_getx_base/shared/utils/size_utils.dart';
import 'package:flutter_getx_base/shared/widgets/custom_text_style.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../shared/constants/common.dart';
import '../../../../shared/utils/inlt_phone_field/intl_phone_field_custom.dart';
import '../../../../shared/utils/no_space_formatter.dart';
import '../../../../shared/utils/regex.dart';
import '../../../../shared/widgets/button.dart';
import '../../../../shared/widgets/icon_button_custom.dart';
import '../../../../shared/widgets/input_field.dart';
import '../../../../theme/theme_helper.dart';

class LoginForm extends GetView<AuthController> {
  final AppController appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.loginFormKey,
      child: Column(
        children: [
          Text(
            CommonConstants.btnSignIn.tr,
            style: CustomTextStyles.titleSignInBlack700,
          ),
          const SizedBox(
            height: CommonConstants.defaultPadding / 0.5,
          ),
          Padding(
            padding: getPadding(top: 36),
            child: IntlPhoneFieldCustom(
              inputFormatters: [NoSpaceLowerCaseFormatter()],
              controller: controller.loginPhoneNoControllerCode,
              keyboardType: TextInputType.phone,
              style: TextStyle(
                color: Colors.black,
                fontSize: getSize(18),
              ),
              autofocus: false,
              focusNode: controller.emailFocus,
              decoration: InputDecoration(
                contentPadding: getPadding(all: 10),
                hintText: CommonConstants.enterYourPhone.tr,
                hintStyle: CustomTextStyles.lableTextInput500,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              initialCountryCode: 'VN',
              onChanged: (phone) {
                print("complete" + phone.completeNumber);
                controller.loginPhoneNoController.text = phone.completeNumber;
              },
            ),
          ),
          Padding(
            padding: getPadding(top: 16),
            child: Obx(
              () => InputField(
                controller: controller.loginPasswordController,
                hintText: CommonConstants.enterYourPassword.tr,
                suffixIcon: IconButtonCustom(
                  onPressed: () => controller
                      .togglePasswordVisibility(controller.isPasswordVisible),
                  child: Padding(
                    padding: getPadding(all: 5),
                    child: SvgPicture.asset(
                      controller.isPasswordVisible.value
                          ? ImageConstant.imgHiddenPassWord
                          : ImageConstant.icShowPassWord,
                      color: appTheme.gray500,
                    ),
                  ),
                ),
                icon: ImageConstant.iconPassword,
                obscureText: controller.isPasswordVisible.value,
                focusNode: controller.passwordFocus,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return CommonConstants.passwordIsRequired.tr;
                  }
                  if (!Regex.isPasswordAtLeast6Characters(value)) {
                    return CommonConstants.textErrorPassword.tr;
                  }
                  return null;
                },
              ),
            ),
          ),
          // Padding(
          //   padding: getPadding(top: 18),
          //   child: Align(
          //     alignment: Alignment.centerRight,
          //     child: TextButton(
          //       onPressed: () {
          //         controller.loginPhoneNoController.clear();
          //         controller.loginPasswordController.clear();
          //       },
          //       child: Text(
          //         CommonConstants.forgotPasswordInLogin.tr,
          //         style: CustomTextStyles.lableForgotPasswordBlack500,
          //       ),
          //     ),
          //   ),
          // ),
          const SizedBox(height: CommonConstants.defaultPadding + 18),
          CommonWidgets.primaryButton(
            text: CommonConstants.btnSignIn.tr,
            onPressed: () => controller.login(context),
          ),
          SizedBox(height: getSize(120)),
          OrDivider(),
          SizedBox(height: getSize(40)),
          SocialSignUp(),
          SizedBox(height: getSize(40)),
        ],
      ),
    );
  }
}
