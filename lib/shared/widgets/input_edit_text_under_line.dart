import 'package:flutter/material.dart';

class InputEditTextUnderLine extends StatefulWidget {
  final String labelText;
  final bool isDisable;
  final TextEditingController controller;
  final bool? isDateTimeClick;
  final Function? onPressed;
  final String? Function(String?)? validator;

  InputEditTextUnderLine(
      {required this.labelText,
      required this.controller,
      required this.isDisable,
      this.isDateTimeClick,
      this.validator,
      this.onPressed});

  @override
  _InputEditTextUnderLineState createState() => _InputEditTextUnderLineState();
}

class _InputEditTextUnderLineState extends State<InputEditTextUnderLine> {
  String? _validateInput(String? value) {
    // Implement your validation logic here
    if (value == null || value.isEmpty) {
      return 'This field cannot be empty';
    }
    // Return null if the input is valid
    return null;
  }

  Widget build(BuildContext context) {
    final commonDecoration = InputDecoration(
      contentPadding: const EdgeInsets.only(bottom: 3),
      labelText: widget.labelText,
      labelStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: widget.isDisable ? Colors.grey : Colors.black,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      hintText: widget.labelText,
      hintStyle: const TextStyle(
        fontSize: 14,
        fontStyle: FontStyle.italic,
        color: Colors.blueGrey,
      ),
    );

    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: Material(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: () {
            if (widget.isDateTimeClick != null &&
                widget.isDateTimeClick! &&
                widget.onPressed != null) {
              widget
                  .onPressed!(); // Call the onPressed function to show the date picker
            }
          },
          child: TextFormField(
            validator: _validateInput,
            controller: widget.controller,
            enabled: !widget.isDisable && widget.isDateTimeClick == null,
            style: TextStyle(
              color: widget.isDisable ? Colors.grey : Colors.black,
            ),
            decoration: commonDecoration,
          ),
        ),
      ),
    );
  }
}
