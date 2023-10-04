// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getx_base/shared/constants/colors.dart';
import 'package:flutter_getx_base/shared/utils/size_utils.dart';
import 'package:flutter_getx_base/shared/widgets/custom_text_style.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../app_controller.dart';
import '../../theme/theme_helper.dart';
import '../constants/common.dart';

class InputField extends StatelessWidget {
  final void Function(String?)? onSaved;

  final String hintText;
  final String? icon;
  final bool obscureText;
  final bool? enableTexfield;
  final bool? isBorder;
  final Color? leadingIconColor;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final IconButton? iconButton;
  final Widget? suffixIcon;
  final String? initValue;
  final void Function(String)? onChanged;
  final bool digitsOnly;
  final double? paddingIcon;
  bool validate = false;
  bool checkBackgroundColorTextfield;

  List<TextInputFormatter>? inputFormatters;
  InputField({
    Key? key,
    required this.hintText,
    this.icon,
    this.leadingIconColor,
    this.obscureText = false,
    this.enableTexfield = true,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.onSaved,
    this.focusNode,
    this.isBorder,
    this.validator,
    this.iconButton,
    this.suffixIcon,
    this.initValue,
    this.inputFormatters,
    this.onChanged,
    this.digitsOnly = false,
    this.paddingIcon,
    this.checkBackgroundColorTextfield = false,
  }) : super(key: key);

  PrimaryColors get appTheme => ThemeHelper().themeColor();
  final AppController appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      inputFormatters: inputFormatters,
      validator: validator,
      keyboardType: digitsOnly ? TextInputType.number : keyboardType,
      textInputAction: textInputAction,
      cursorColor: ColorConstants.kPrimaryColor,
      controller: controller,
      onSaved: onSaved,
      focusNode: focusNode,
      obscureText: obscureText,
      initialValue: initValue,
      style: TextStyle(
        color: checkBackgroundColorTextfield == true
            ? appController.isDarkModeOn.value
                ? ColorConstants.white
                : ColorConstants.black
            : ColorConstants.black,
      ),
      decoration: InputDecoration(
        suffixIconConstraints:
            const BoxConstraints(maxHeight: 60, maxWidth: 60),
        contentPadding: getPadding(all: 10),
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: CustomTextStyles.lableTextInput500,
        prefixIcon: Padding(
          padding: paddingIcon != null
              ? EdgeInsets.all(paddingIcon!)
              : EdgeInsets.all(CommonConstants.defaultPadding),
          child: Container(
            height: getSize(20),
            width: getSize(20),
            child: icon != null
                ? SvgPicture.asset(
                    icon ?? "",
                    color: leadingIconColor != null
                        ? leadingIconColor
                        : ColorConstants.grey,
                  )
                : null,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: isBorder ?? false
              ? BorderSide(color: appTheme.gray400)
              : BorderSide.none,
          borderRadius: BorderRadius.circular(5.0),
        ),
        filled: true,
        fillColor: checkBackgroundColorTextfield == true
            ? appController.isDarkModeOn.value
                ? ColorConstants.grey800
                : ColorConstants.white
            : ColorConstants.white,
      ),
      enabled: enableTexfield,
    );
  }
}
