import 'package:flutter/material.dart';
import 'package:flutter_getx_base/app_controller.dart';
import 'package:flutter_getx_base/shared/constants/colors.dart';
import 'package:flutter_getx_base/theme/theme_helper.dart';
import 'package:get/get.dart';

import '../utils/size_utils.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  static final AppController appController = Get.find();

  // Body text style
  static get bodyMediumBluegray100 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray100,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPublicSansBlack900 =>
      theme.textTheme.titleMedium!.publicSans.copyWith(
        color: appTheme.black900.withOpacity(0.85),
        fontSize: getFontSize(
          18,
        ),
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get labelLargeBlue900 => theme.textTheme.labelLarge!.copyWith(
      color: appTheme.blue900, fontWeight: FontWeight.w700, fontSize: 13);

  static get bodySmallBlue90010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blue900,
        fontSize: getFontSize(
          14,
        ),
      );
  static get titleSmallBlue200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blue200,
      );
  static get labelLargeGray400_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray400,
      );
  static get labelLargeGray600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallBlue900 => theme.textTheme.titleSmall!
      .copyWith(color: appTheme.blue900, fontSize: 10);
  static get titleMediumOnPrimary_1 => theme.textTheme.titleMedium!.copyWith(
      //color: theme.colorScheme.onPrimary,
      );
  static get titleSmallBlue300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blue300,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: ColorConstants.kPrimaryColor,
      );
  static get titleSmallGreen => theme.textTheme.bodySmall!.copyWith(
        color: ColorConstants.greenColor,
      );
  static get bodySmallPrimary10 => theme.textTheme.bodySmall!.copyWith(
        color: ColorConstants.kPrimaryColor,
        fontSize: getFontSize(
          10,
        ),
        fontWeight: FontWeight.w400,
      );

  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.black900.withOpacity(0.85),
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray500,
      );
  static get titleSmallGray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray400,
      );
  static get titleMediumGray400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray400,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w500,
      );
  // Body text style
  static get bodySmallOnPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallGray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray400,
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: getFontSize(
          10,
        ),
      );

  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallOnPrimary =>
      theme.textTheme.bodySmall!.copyWith(color: theme.colorScheme.onPrimary);

  static get labelLargeGray500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlack900SemiBold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get bodySmallGray500_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
      );
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlack950 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 14,
      );
  static get bodySmallBlue300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blue300,
      );

  static get bodySmallBlue350 => theme.textTheme.bodySmall!
      .copyWith(color: appTheme.blue300, fontSize: 14);
  static get bodySmallred => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.red400,
      );

  static get bodySmallBlue250 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blue300,
        fontSize: 14,
      );
  static get bodySmallBlue => theme.textTheme.bodySmall!.copyWith(
      color: appController.isDarkModeOn.value
          ? ColorConstants.colorDarkModeBlue
          : ColorConstants.kPrimaryColor,
      fontSize: 14,
      fontWeight: FontWeight.w700);
  static get labelLargePublicSans =>
      theme.textTheme.labelLarge!.publicSans.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );

  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get bodySmallWhite => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallBlack900_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );

  static get labelLargeBold => theme.textTheme.labelLarge!
      .copyWith(fontWeight: FontWeight.w700, color: appTheme.whiteA700);

  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.85),
      );
  static get titleSmallBlack700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.35),
      );
  static get bodySmallBluegray100 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray100,
      );
  // Title text style
  static get titleMediumAmberA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.amberA700,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );

  static get bodySmallPrimaryContainer_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  // Label text style
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOnPrimaryBold => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get titleOTPGray300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray200,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w400,
      );
  static get lableOnboadringBlack400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        height: 1.3,
        color: appTheme.black400,
        fontSize: getFontSize(
          13,
        ),
        fontWeight: FontWeight.w400,
      );
  static get lableOnboadringBlack500 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.black500,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w500,
      );
  static get lableForgotPasswordBlack500 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.black500,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w500,
      );
  static get lableNameEventBlack500 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? ColorConstants.nearlyWhite
            : ColorConstants.nearlyBlack,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleOnboadringBlack700 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: ColorConstants.nearlyBlack,
        fontWeight: FontWeight.w700,
        fontSize: getFontSize(
          22,
        ),
      );
  static get titleRewardPageBlack600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? ColorConstants.nearlyWhite
            : ColorConstants.nearlyBlack,
        fontWeight: FontWeight.w600,
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleSignInBlack700 => theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w700,
        color: appTheme.black900,
        fontSize: getFontSize(
          26,
        ),
      );
  static get titleSignInBlue600 => theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
        color: appController.isDarkModeOn.value
            ? ColorConstants.nearlyWhite
            : ColorConstants.kPrimaryColor,
        fontSize: getFontSize(
          13,
        ),
      );
  static get lableTextInput500 => theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w500,
        color: appTheme.gray60,
        fontSize: getFontSize(
          16,
        ),
      );
  static get labelNumber => theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w400,
        color: appTheme.red400,
        fontSize: getFontSize(
          14,
        ),
      );
  static get labelGray600Size14Fw400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w400,
        color: appController.isDarkModeOn.value
            ? ColorConstants.nearlyWhite
            : appTheme.gray600,
        fontSize: getFontSize(
          14,
        ),
      );
  static get labelGray600Size12Fw400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w400,
        color: appController.isDarkModeOn.value
            ? ColorConstants.nearlyWhite
            : appTheme.gray600,
        fontSize: getFontSize(
          12,
        ),
      );
  static get labelBlue400Size12Fw700 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w700,
        color: appController.isDarkModeOn.value
            ? ColorConstants.nearlyWhite
            : appTheme.blue400,
        fontSize: getFontSize(
          12,
        ),
      );
  static get labelGray600Size12Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? ColorConstants.nearlyWhite
            : appTheme.gray600,
        fontSize: getFontSize(
          16,
        ),
      );

  static get labelGray200Size12Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
        color: appController.isDarkModeOn.value
            ? ColorConstants.nearlyWhite
            : appTheme.gray200,
        fontSize: getFontSize(
          12,
        ),
      );
  static get labelRegularGray600Size12Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
        color: appController.isDarkModeOn.value
            ? ColorConstants.nearlyWhite
            : appTheme.gray600,
        fontSize: getFontSize(
          12,
        ),
      );
  static get labelGray600Size12Fw600NoDark =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
        color: appTheme.gray600,
        fontSize: getFontSize(
          12,
        ),
      );
  static get labelBlack500Size12Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
        color: appController.isDarkModeOn.value
            ? ColorConstants.nearlyWhite
            : appTheme.black500,
        fontSize: getFontSize(
          12,
        ),
      );
  static get labelGreen400Size14Fw400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w400,
        color: appController.isDarkModeOn.value
            ? ColorConstants.nearlyWhite
            : appTheme.green300,
        fontSize: getFontSize(
          14,
        ),
      );
  static get labelGray400Size14Fw400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w400,
        color: appController.isDarkModeOn.value
            ? ColorConstants.nearlyWhite
            : appTheme.gray500,
        fontSize: getFontSize(
          14,
        ),
      );
  static get labelRed400Size14Fw400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w400,
        color: appController.isDarkModeOn.value
            ? ColorConstants.nearlyWhite
            : appTheme.red300,
        fontSize: getFontSize(
          14,
        ),
      );
  static get labelBlue500Size12Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
        color: appController.isDarkModeOn.value
            ? ColorConstants.nearlyWhite
            : appTheme.blue400,
        fontSize: getFontSize(
          12,
        ),
      );
  static get labelBlue500Size11Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
        color: appController.isDarkModeOn.value
            ? ColorConstants.nearlyWhite
            : appTheme.blue400,
        fontSize: getFontSize(
          11,
        ),
      );
  static get labelWhiteA700Size12Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
        color: appController.isDarkModeOn.value
            ? ColorConstants.nearlyWhite
            : appTheme.whiteA700,
        fontSize: getFontSize(
          12,
        ),
      );

  static get labelWhiteA700Size12Fw600NoDark =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          12,
        ),
      );
  static get labelBlue400Size36Fw700 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w700,
        color: appTheme.blue400,
        fontSize: getFontSize(
          36,
        ),
      );
  static get labelBlue400Size18Fw500 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
        color: appTheme.blue400,
        fontSize: getFontSize(
          18,
        ),
      );
  static get labelBlue400Size18Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
        color: appController.isDarkModeOn.value
            ? ColorConstants.nearlyWhite
            : appTheme.blue400,
        fontSize: getFontSize(
          18,
        ),
      );
  static get labelBlack500Size12Fw400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w400,
        color: appController.isDarkModeOn.value
            ? ColorConstants.nearlyWhite
            : appTheme.black500,
        fontSize: getFontSize(
          12,
        ),
      );
  static get labelButtonWhite700Size12Fw700 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w700,
        color: appController.isDarkModeOn.value
            ? appTheme.black500
            : ColorConstants.nearlyWhite,
        fontSize: getFontSize(
          12,
        ),
      );
  static get labelBlack500Size18Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.black500,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w600,
      );

  static get labelBlack500Size24Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.black500,
        fontSize: getFontSize(
          20,
        ),
      );
  static get labelBlack500Size18Fw700 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.black500,
        fontSize: getFontSize(
          22,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelCancelBlack500Size18Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.black500,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelCancelBlack => theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.black500,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w400,
      );
  static get labelBlack700Size18Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.black400,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w600,
      );

  static get labewhiteA700Size18Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.whiteA700,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelGray700Size12Fw400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray700,
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w400,
      );
  static get labewhiteA700Size14Fw400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.whiteA700,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w400,
      );
  static get labewhiteA700Size24Fw700 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.whiteA700,
        fontSize: getFontSize(
          24,
        ),
        fontWeight: FontWeight.w700,
      );
  static get labelBlack500Size24Fw700 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.black500,
        fontSize: getFontSize(
          24,
        ),
        fontWeight: FontWeight.w700,
      );
  static get labelBlack500Size24Fw700NoDark =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.black500,
        fontSize: getFontSize(
          24,
        ),
        fontWeight: FontWeight.w700,
      );
  static get labelScanQRcodeWhitew500 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          24,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelBlack500Size14Fw400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.black500,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w400,
      );
  static get labelBlack500Op85Size14Fw400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.black500.withOpacity(.85),
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w400,
      );
  static get labelBlack500Size14Fw700 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.black500,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelBlue600Size14Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.blue600,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelWhite500Size14Fw700 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? ColorConstants.kPrimaryColor
            : ColorConstants.nearlyWhite,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w700,
      );
  static get labelButtonWhite500Size14Fw700 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: ColorConstants.nearlyWhite,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w700,
      );
  static get labelWhite500Size14Fw400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w400,
      );
  static get labelCheckRankWhite500Size14Fw400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.amberA700.withOpacity(.9),
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w400,
      );
  static get labelWhite700Size14Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.black500
            : appTheme.whiteA700,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelWhite700Size18Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.black500
            : appTheme.whiteA700,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelStepWhite700Size18Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelBlack500Size14Fw500 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.black500,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelBlack500Size18Fw500 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.black500,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelBlue500Size14Fw500 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : ColorConstants.kPrimaryColor,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelBlueGray100Size16Fw500 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.blueGray100,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelBlack500Size14Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.black500,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelBlack500Size16Fw500 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.black500,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w500,
      );

  static get labelBlack400Size16Fw400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? ColorConstants.nearlyWhite
            : ColorConstants.nearlyBlack,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w400,
      );
  static get labelBlackSize16Fw400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: ColorConstants.nearlyBlack,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w400,
      );
  static get labelGray600Size16Fw500 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.gray600,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelGray500Size14Fw400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.gray500,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w400,
      );
  static get labelGray500Size12Fw400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.gray500,
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w400,
      );
  static get labelGray500Size10Fw400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.gray600,
        fontSize: getFontSize(
          10.5,
        ),
        fontWeight: FontWeight.w400,
      );
  static get labelBlue600Size24Fw700 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.blue600,
        fontSize: getFontSize(
          24,
        ),
        fontWeight: FontWeight.w700,
      );
  static get labelBlue600Size32Fw700 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.blue600,
        fontSize: getFontSize(
          32,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelRed300Size14Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.red300,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w600,
      );

  static get labelRed300Size11Fw500 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.red300,
        fontSize: getFontSize(
          11,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelBlue600Size18Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.blue600,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelBlue600Size16Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.blue600,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelBlue400Size14Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color:
            appController.isDarkModeOn.value ? Colors.white : appTheme.blue600,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelBlue400Size12Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color:
            appController.isDarkModeOn.value ? Colors.white : appTheme.blue600,
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w600,
      );

  static get labelBlue300Size12Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.blue300,
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w600,
      );

  static get labelBlue800Size18Fw800 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.blue900,
        fontSize: getFontSize(
          22,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelRewardw600 => theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelRewardBlureSize18Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.blue600,
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelRewardBlureSize11Fw500 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? ColorConstants.colorDarkModeBlue
            : appTheme.blue600,
        fontSize: getFontSize(
          11,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelRewardBlureSize11Fw550 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? ColorConstants.backgroundColorButtonBlue
            : appTheme.blue600,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w500,
      );
  static get lableEventListSize11Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color:
            appController.isDarkModeOn.value ? Colors.white : appTheme.gray500,
        fontSize: getFontSize(
          11,
        ),
        fontWeight: FontWeight.w600,
      );

  static get lableEventListSize14Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color:
            appController.isDarkModeOn.value ? Colors.white : appTheme.gray500,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w600,
      );
  static get lableEventListSize11Fw500 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color:
            appController.isDarkModeOn.value ? Colors.white : appTheme.black400,
        fontSize: getFontSize(
          11,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelGray600Size14Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appController.isDarkModeOn.value
            ? appTheme.whiteA700
            : appTheme.gray600,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelRed400Size14Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
        color: appTheme.red300,
        fontSize: getFontSize(
          14,
        ),
      );
  static get label400Size14Fw600 => theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
        color: appTheme.gray600,
        fontSize: getFontSize(
          14,
        ),
      );
  static get labelYellow400Size16Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
        color: appTheme.amberA700.withOpacity(.9),
        fontSize: getFontSize(
          14,
        ),
      );
  static get labelYellowSize12Fw600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
        color: appTheme.amberA600,
        fontSize: getFontSize(
          12,
        ),
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get publicSans {
    return copyWith(
      fontFamily: 'Public Sans',
    );
  }
}
