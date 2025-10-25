import 'package:flutter/material.dart';

class TTextFieldTheme {
  TTextFieldTheme._();

  static InputDecorationTheme lightTextFieldTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey.shade600,
    suffixIconColor: Colors.grey.shade200,
    filled: true,
    labelStyle: TextStyle().copyWith(
      color: Colors.grey.shade600,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    hintStyle: TextStyle().copyWith(
      color: Colors.grey.shade600,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    errorStyle: TextStyle().copyWith(
      color: Colors.red.shade700,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    fillColor: Colors.grey.shade200,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey.shade400),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey.shade400),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.blue),
    ),
  );

  static InputDecorationTheme darkTextFieldTheme = InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey.shade800,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey.shade700),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey.shade700),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.blue.shade200),
    ),
    hintStyle: TextStyle(color: Colors.grey.shade400),
    labelStyle: TextStyle(color: Colors.grey.shade400),
    errorStyle: TextStyle(
      color: Colors.red.shade400,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    errorMaxLines: 3,
    prefixIconColor: Colors.grey.shade400,
    suffixIconColor: Colors.grey.shade400,
  );
}
