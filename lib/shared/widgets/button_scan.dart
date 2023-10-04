import 'package:flutter/material.dart';


class CustomButtonScanQrCode extends StatelessWidget {
  const CustomButtonScanQrCode({
    super.key,
    required this.child,
    this.onPressed,
    this.text,
  });
  final Widget child;
  final VoidCallback? onPressed;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
    );
  }
}
