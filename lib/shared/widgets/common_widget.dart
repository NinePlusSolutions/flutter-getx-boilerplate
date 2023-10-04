import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class CommonWidget {
  static AppBar appBar(
      BuildContext context, String title, IconData? backIcon, Color color,
      {void Function()? callback}) {
    return AppBar(
      leading: backIcon == null
          ? null
          : IconButton(
              icon: Icon(backIcon, color: color),
              onPressed: () {
                if (callback != null) {
                  callback();
                } else {
                  Navigator.pop(context);
                }
              },
            ),
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(color: color, fontFamily: 'Rubik'),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }

  static SizedBox rowHeight({double height = 30}) {
    return SizedBox(height: height);
  }

  static SizedBox rowWidth({double width = 30}) {
    return SizedBox(width: width);
  }

  static void toast(String error) async {
    await Fluttertoast.showToast(
        msg: error,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0);
  }

  static void toastAPIError(String error) async {
    await Fluttertoast.showToast(
        msg: error.tr,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0);
  }

  static void showCustomDialog({
    String title = "",
    GlobalKey<NavigatorState>? navigatorKey,
    bool isSuccess = false,
  }) {
    AwesomeDialog(
      onDismissCallback: (DismissType type) {},
      // dismissOnTouchOutside: false,
      context: navigatorKey!.currentContext!,
      dialogType: isSuccess ? DialogType.success : DialogType.error,
      animType: AnimType.rightSlide,
      desc: title.tr,
      btnCancelOnPress: () {},
      btnCancelText: "close".tr,
      btnCancelColor: isSuccess ? Colors.green : Colors.red,
      descTextStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    )..show();
  }
}
