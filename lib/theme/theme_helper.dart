import 'package:flutter/material.dart';
import 'package:flutter_getx_base/shared/constants/colors.dart';
import 'package:get/get.dart';

import '../shared/utils/pref_utils.dart';
import '../shared/utils/size_utils.dart';

class ThemeHelper {
  var _appTheme = PrefUtils().getThemeData();

  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  PrimaryColors _getThemeColors() {
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  ThemeData _getThemeData() {
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: appTheme.whiteA700,
            fontSize: getFontSize(
              14,
            ),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
          bodySmall: TextStyle(
            color: appTheme.gray600,
            fontSize: getFontSize(
              12,
            ),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
          bodyLarge: TextStyle(
            color: hexToColor("#737373"),
            fontSize: getFontSize(
              14,
            ),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
          displayMedium: TextStyle(
            color: Colors.blue,
            fontSize: getFontSize(
              14,
            ),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.underline,
          ),
          titleLarge: TextStyle(
            color: appTheme.black900,
            fontSize: getFontSize(
              18,
            ),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w800,
          ),
          titleSmall: TextStyle(
            color: appTheme.black900,
            fontSize: getFontSize(
              14,
            ),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
          titleMedium: TextStyle(
            color: appTheme.black900,
            fontSize: getFontSize(
              16,
            ),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
          labelLarge: TextStyle(
            color: appTheme.black900.withOpacity(0.85),
            fontSize: getFontSize(
              12,
            ),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
          headlineSmall: TextStyle(
            color: appTheme.whiteA700,
            fontSize: getFontSize(
              24,
            ),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
          ),
          labelMedium: TextStyle(
            color: appTheme.whiteA700,
            fontSize: getFontSize(
              12,
            ),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          )),
      visualDensity: VisualDensity.standard,
    );
  }

  PrimaryColors themeColor() => _getThemeColors();

  ThemeData themeData() => _getThemeData();
}

class ColorSchemes {
  static final primaryColorScheme = const ColorScheme.light();
}

class PrimaryColors {
  // Amber
  Color get amberA700 => const Color(0XFFFFAC0D);
  Color get amberA600 => const Color(0XFFAC6000);

  // Black
  Color get black900 => const Color(0XFF000000);
  Color get black400 => const Color(0XFF000000);
  Color get black500 => const Color(0XFF000000);

  // BlueGray
  Color get blueGray100 => const Color(0XFFCCCCCC);
  Color get blueGray400 => const Color(0XFF888888);

  // Gray
  Color get gray100 => const Color(0XFFF6F6F6);
  Color get gray200 => const Color(0XFF4E4B66);
  Color get gray300 => const Color(0XFFE6E6E6);
  Color get gray400 => const Color(0XFFBFBFBF);
  Color get gray500 => const Color(0XFF999999);
  Color get gray600 => const Color(0XFF737373);
  Color get gray700 => const Color(0xFFF7F7F7);
  Color get grayNormal => const Color(0x737373);

  Color get lightGreen400Bf => const Color(0XBF94E059);
  Color get green300 => const Color(0XFF52A12C);

  Color get lightGreen900Bf => const Color(0xFF52A12C);
  Color get indigo300 => const Color(0XFF8989D6);
  Color get gray60 => const Color(0XFFBFBFBF);

  // Blue
  Color get whiteA700 => const Color(0XFFFFFFFF);
  Color get blue100 => const Color(0xFF0043AB).withOpacity(0.5);
  Color get blue200 => const Color(0XFF93C5F6);
  Color get blue300 => const Color(0XFF5C9CE4);
  Color get blue400 => const Color(0XFF0043AB);
  Color get blue500 => const Color(0XFF1287E8);
  Color get blue600 => const Color(0XFF0043AB);

  // Red
  Color get red300 => const Color(0xFFFF5630);
  Color get red400 => const Color(0XFFFF5630);
  Color get deepOrange700 => const Color(0XFFE64D2B);

  Color get blue900 => const Color(0XFF0043AB);
  Color get red50 => const Color(0XFFFFEEEA);
  Color get indigo900 => const Color(0XFF00267B);
  Color get tealA400Bf => const Color(0XBF2BD2AB);
  Color get deepOrange400Bf => const Color(0XBFF88344);
  Color get gray90099 => const Color(0X99010F3B);

  // Transparent
  Color get lightBlueTransparent16Percent =>
      const Color(0xFF93C5F6).withOpacity(0.16);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
