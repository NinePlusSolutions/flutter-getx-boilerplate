import 'package:flutter/services.dart';

class NoSpaceLowerCaseFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Convert to lowercase
    String lowerCaseText = newValue.text.toLowerCase();

    // Remove spaces
    String noSpaceText = lowerCaseText.replaceAll(' ', '');

    // Calculate the new selection position
    int newSelectionIndex = newValue.selection.baseOffset -
        (newValue.text.length - noSpaceText.length);

    // Ensure the new selection position is within the bounds of the text
    newSelectionIndex = newSelectionIndex.clamp(0, noSpaceText.length);

    // Create a new TextEditingValue with the updated text and selection
    TextEditingValue updatedValue = TextEditingValue(
      text: noSpaceText,
      selection: TextSelection.collapsed(offset: newSelectionIndex),
    );

    return updatedValue;
  }
}
