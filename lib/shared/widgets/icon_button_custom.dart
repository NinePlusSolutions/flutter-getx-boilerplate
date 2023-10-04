import 'package:flutter/material.dart';

class IconButtonCustom extends StatelessWidget {
  const IconButtonCustom({
    super.key,
    required this.child,
    this.onPressed,
  });
  final Widget child;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: child,
      onTap: onPressed as Function(),
    );
  }
}
