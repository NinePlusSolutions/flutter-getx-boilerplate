import 'package:flutter/material.dart';

class KeyboardFormField extends StatelessWidget {
  const KeyboardFormField({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: child,
    );
  }
}
