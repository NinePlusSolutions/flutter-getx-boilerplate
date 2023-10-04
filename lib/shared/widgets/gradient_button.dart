import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/common.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final Widget? child;
  final Gradient? gradient;
  final double width;
  final double height;
  final Function? onPressed;

  const GradientButton({
    Key? key,
    this.text = "",
    this.child,
    this.gradient,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient ??
            LinearGradient(
              colors: <Color>[
                hexToColor('#405FA3'),
                hexToColor('#1ED69D'),
              ],
            ),
        borderRadius: BorderRadius.circular(22.0),
        boxShadow: [
          BoxShadow(
            color: hexToColor('#E5F5FF'),
            offset: const Offset(0.0, 1.5),
            blurRadius: 1.5,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed as void Function()?,
          child: Center(
            child: text != ""
                ? Text(
                    text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: CommonConstants.normalText,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : child,
          ),
        ),
      ),
    );
  }
}
