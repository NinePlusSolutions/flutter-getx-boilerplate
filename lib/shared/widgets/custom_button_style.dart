import 'package:flutter/material.dart';
import 'package:flutter_getx_base/shared/constants/colors.dart';
import 'package:flutter_getx_base/theme/theme_helper.dart';
import 'package:get/get.dart';

import '../../app_controller.dart';
import '../utils/size_utils.dart';

class CustomButtonStyles {
  static final AppController appController = Get.find();

  static ButtonStyle get outlinePrimary => OutlinedButton.styleFrom(
        backgroundColor: ColorConstants.kPrimaryColor,
        side: const BorderSide(
          color: ColorConstants.kPrimaryColor,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
      );

  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray300,
          width: getHorizontalSize(1),
        ),
      );
  static ButtonStyle get fillBlue900 => ElevatedButton.styleFrom(
        backgroundColor: appController.isDarkModeOn.value
            ? ColorConstants.backgroundColorButtonBlue
            : appTheme.blue900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            22,
          ),
        ),
      );
  static ButtonStyle get fillGreen900 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightGreen900Bf,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
      );

  static ButtonStyle get fillBluegray100 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            22,
          ),
        ),
      );
  static ButtonStyle get outlineBlue900 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.blue900,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
      );

  static ButtonStyle get outlineBlue900TL8 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.blue900,
        side: BorderSide(
          color: appTheme.blue900,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
      );
  static BoxDecoration get gradientnameblue900nameblue600Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        ),
        gradient: LinearGradient(
          begin: const Alignment(
            0.5,
            0,
          ),
          end: const Alignment(
            0.5,
            1,
          ),
          colors: [
            appTheme.blue900,
            appTheme.blue600,
          ],
        ),
      );
  static ButtonStyle get gradientnameblue900nameblue600 =>
      ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
      );
}
