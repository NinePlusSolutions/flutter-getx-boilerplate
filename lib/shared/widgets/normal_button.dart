import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {
  const NormalButton({
    super.key,
    this.title,
    this.color,
    required this.onPressed,
    required this.child,
  });
  final String? title;
  final Function? onPressed;
  final Widget child;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      // splashColor: color,
      onTap: onPressed as void Function()?,
      child: child,
    );
  }
}
