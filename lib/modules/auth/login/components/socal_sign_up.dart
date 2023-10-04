import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_getx_base/modules/auth/login/components/social_icon.dart';
import 'package:flutter_getx_base/shared/constants/image_constant.dart';

class SocialSignUp extends StatelessWidget {
  const SocialSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isIOS = Platform.isIOS;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        if (isIOS) ...[
          SocialIcon(iconSrc: ImageConstant.iconApple, press: () async {}),
          Spacer(),
        ],
        SocialIcon(iconSrc: ImageConstant.iconGoogle, press: () {}),
        Spacer(),
        SocialIcon(iconSrc: ImageConstant.iconZalo, press: () {}),
        Spacer(),
      ],
    );
  }
}
