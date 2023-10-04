import 'package:flutter/material.dart';

class ColorConstants {
  static Color lightScaffoldBackgroundColor = hexToColor('#F9F9F9');
  static Color darkScaffoldBackgroundColor = hexToColor('#2F2E2E');
  static Color secondaryAppColor = hexToColor('#22DDA6');
  static Color secondaryDarkAppColor = Colors.white;
  static Color tipColor = hexToColor('#B6B6B6');
  static Color lightGray = const Color(0xFFF6F6F6);
  static Color darkGray = const Color(0xFF9F9F9F);
  static Color black = const Color(0xFF000000);
  static Color blackText = const Color.fromARGB(255, 17, 17, 17);
  static Color white = const Color(0xFFFFFFFF);
  static Color red = Colors.red;
  static Color orangerRewardColor = const Color(0xFFF88344);
  static Color greenLightRewardColor = const Color(0xFF2BD2AB);
  static Color greenRewardColor = const Color(0XFF94E059);
  static Color purpleRewardColor = const Color(0XFF8989D6);
  static Color yellowRewardColor = const Color(0XFFFFAD0E);
  static Color lightBlueRewardColor = const Color(0XFF5C9CE4);
  static var primaryColor = const Color(0xff296e48);
  static var blackColor = Colors.black54;
  static Color backgroundColor = const Color(0xFFF5F5F5);
  static Color backgroundColorButtonBlue = const Color(0xFF0256D9);
  static var grey800 = Colors.grey[800];
  static Color colorDarkModeBlue = const Color(0xFF5C9CE4);
  static Color colorDarkModeDisable = const Color(0xFF262626);

  static const Color kPrimaryColor = Color(0xFF0043AB);
  static const Color kPrimaryLightColor = Color(0xFFF1E6FF);
  static const Color nearlyDarkBlue = Color(0xFF2633C5);
  static const Color nearlyWhite = Color(0xFFFFFFFF);
  static const Color grey = Color(0xFF3A5160);
  static const Color darkerText = Color(0xFF17262A);
  static const Color nearlyBlue = Color(0xFF00B6F0);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color greenColor = Color(0xff00FF00);
  static const Color greyColor = Color(0xffC0C0C0);
  static const Color redColor = Color(0xffFF0000);
  static const Color lightGreenColor = Color(0xFF94E059);
  static const Color orangeColor = Color(0xFFFF5630);
  static const Color lightBlueColor = Color(0xFF5C9CE4);
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}
