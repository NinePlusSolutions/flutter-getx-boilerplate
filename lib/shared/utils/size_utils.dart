// ignore_for_file: deprecated_member_use

import 'dart:ui' as ui;
import 'package:flutter/material.dart';

// This functions are responsible to make UI responsive across all the mobile devices.

MediaQueryData mediaQueryData = MediaQueryData.fromView(ui.window);

const num FIGMA_DESIGN_WIDTH = 428;
const num FIGMA_DESIGN_HEIGHT = 926;
const num FIGMA_DESIGN_STATUS_BAR = 0;

double getScaleFactor() {
  if (_width <= 320) {
    // Ví dụ: đối với màn hình nhỏ như iPhone 5
    return 1.5; // Tăng kích thước lên 1.5 lần
  } else if (_width <= 375) {
    // Ví dụ: đối với màn hình trung bình
    return 1.2; // Tăng kích thước lên 1.2 lần
  }
  return 1.0; // Mặc định cho màn hình lớn
}

///This method is used to get device viewport width.
get _width {
  return mediaQueryData.size.width;
}

///This method is used to get device viewport height.
get _height {
  num statusBar = mediaQueryData.viewPadding.top;
  num bottomBar = mediaQueryData.viewPadding.bottom;
  num screenHeight = mediaQueryData.size.height - statusBar - bottomBar;
  return screenHeight;
}

double getHorizontalSize(double px) {
  return ((px * _width) / FIGMA_DESIGN_WIDTH) * getScaleFactor();
}

double getVerticalSize(double px) {
  return ((px * _height) / (FIGMA_DESIGN_HEIGHT - FIGMA_DESIGN_STATUS_BAR)) *
      getScaleFactor();
}

double getSize(double px) {
  var height = getVerticalSize(px);
  var width = getHorizontalSize(px);
  if (height < width) {
    return height.toDoubleValue();
  } else {
    return width.toDoubleValue();
  }
}

double getFontSize(double px) {
  return getSize(px);
}

EdgeInsets getPadding({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  return getMarginOrPadding(
    all: all,
    left: left,
    top: top,
    right: right,
    bottom: bottom,
  );
}

EdgeInsets getMargin({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  return getMarginOrPadding(
    all: all,
    left: left,
    top: top,
    right: right,
    bottom: bottom,
  );
}

EdgeInsets getMarginOrPadding({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  if (all != null) {
    left = all;
    top = all;
    right = all;
    bottom = all;
  }
  return EdgeInsets.only(
    left: getHorizontalSize(left ?? 0),
    top: getVerticalSize(top ?? 0),
    right: getHorizontalSize(right ?? 0),
    bottom: getVerticalSize(bottom ?? 0),
  );
}

extension FormatExtension on double {
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(this.toStringAsFixed(fractionDigits));
  }
}
