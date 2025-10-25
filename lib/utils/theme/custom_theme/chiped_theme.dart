import 'package:flutter/material.dart';

class TChipedTheme {
  TChipedTheme._();

  static ChipThemeData lightChipedTheme = ChipThemeData(
    backgroundColor: Colors.grey.shade200,
    disabledColor: Colors.grey.shade300,
    selectedColor: Colors.blue.shade100,
    labelStyle: TextStyle(color: Colors.black),
    secondaryLabelStyle: TextStyle(color: Colors.white),
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    checkmarkColor: Colors.blue,
  );

  static ChipThemeData darkChipedTheme = ChipThemeData(
    backgroundColor: Colors.grey.shade800,
    disabledColor: Colors.grey.shade700,
    selectedColor: Colors.blue.shade700,
    labelStyle: TextStyle(color: Colors.white),
    secondaryLabelStyle: TextStyle(color: Colors.black),
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    checkmarkColor: Colors.blue.shade200,
  );
}