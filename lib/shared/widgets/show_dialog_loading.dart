import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

Future<dynamic> showdialog(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) => LoadingAnimationWidget.dotsTriangle(
      color: Colors.white,
      size: 50,
    ),
  );
}
