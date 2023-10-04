import 'package:flutter/material.dart';
import 'package:flutter_getx_base/shared/constants/colors.dart';

class SearchInput extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;

  final FocusNode? focusNode;

  const SearchInput({
    Key? key,
    required this.hintText,
    this.icon,
    this.obscureText = false,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * .9,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextField(
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        cursorColor: ColorConstants.kPrimaryColor,
        controller: controller,
        focusNode: focusNode,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
              color: ColorConstants.blackText, fontWeight: FontWeight.normal),
          prefixIcon: Icon(
            icon,
            color: ColorConstants.grey,
          ),
        ),
      ),
    );
  }
}
