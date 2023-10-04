import 'package:flutter/material.dart';

class EnvironmentBanner extends StatelessWidget {
  final String? title;

  EnvironmentBanner(this.title);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            "${title}",
            style: TextStyle(
              color: Colors.grey[700],
              fontWeight: FontWeight.w300,
              fontSize: 12.0,
            ),
          ),
        ),
      ),
    );
  }
}
