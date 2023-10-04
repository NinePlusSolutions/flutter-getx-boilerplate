import 'package:flutter/material.dart';

class CommonConstants {
  static const String someThingWrongPlsTryAgain = 'someThingWrongPlsTryAgain';
  static const String tittleExitApp = 'tittleExitApp';
  static const String home = 'home';
  static const String news = 'news';
  static const String more = 'more';
  static const String event = 'event';
  static const String reward = 'reward';
  static const String profile = 'profile';
  static const String forgotPasswordInLogin = 'forgotPassword?';
  static const String dontHaveAnAcount = 'donHaveAnAcount';
  static const String alreadyHaveAnAccount = 'alreadyHaveAnAccount';
  static const String btnSignUp = 'btnSignUp';
  static const String btnSignIn = 'btnSignIn';
  static const String enterYourPhone = 'enterYourPhone';
  static const String enterYourPassword = 'enterYourPassword';
  static const String passwordIsRequired = 'passwordIsRequired';
  static const String textErrorPassword = 'textErrorPassword';
  static const String or = 'or';
  static const String ok = 'ok';
  static const String phoneNumberIsRequired = 'phoneNumberIsRequired';

  static const double largeText = 40.0;
  static const double normalText = 22.0;
  static const double smallText = 16.0;
  static const double tinyText = 12.0;

  static const double smallPadding = 6.0;
  static const double defaultPadding = 16.0;
  static const double height25 = 25.0;

  static final kTitleTextStyle =
      const TextStyle(fontSize: 35, fontWeight: FontWeight.bold);
  static final kSecondaryTextStyle = TextStyle(
    color: Colors.grey.shade400,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    fontFamily: "Varela",
  );
  final kDonutCardTextStyle = const TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  double baseHeight = 650.0;

  double screenAwareSize(double size, BuildContext context) {
    return size * MediaQuery.of(context).size.height / baseHeight;
  }
}

const double baseHeight = 650.0;

double screenAwareSize(double size, BuildContext context) {
  return size * MediaQuery.of(context).size.height / baseHeight;
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
