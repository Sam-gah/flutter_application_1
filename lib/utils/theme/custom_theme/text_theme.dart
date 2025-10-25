import 'package:flutter/material.dart';

class TAppTextTheme {
  TAppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    bodyLarge: TextStyle(color: Colors.black),
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 28,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(color: Colors.black),
    bodySmall: TextStyle(color: Colors.black),
  );

  static TextTheme darkTextTheme = TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 28,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),

    bodyMedium: TextStyle(color: Colors.white),
    bodySmall: TextStyle(color: Colors.white),
  );
}
