import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_getx_base/routes/app_pages.dart';
import 'package:flutter_getx_base/shared/constants/colors.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../shared/constants/storage.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () async {
        final prefs = await SharedPreferences.getInstance();
        final accessToken = await prefs.getString(StorageConstants.token);
        Get.offAllNamed(accessToken != null ? Routes.HOME : Routes.LOG_IN);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kPrimaryColor,
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: FlutterLogo(),
        ),
      ),
    );
  }
}
