import 'package:flutter/material.dart';

class TAppBarTheme {
  TAppBarTheme._();

  // Light AppBar Theme
  static AppBarTheme lightAppBarTheme = AppBarTheme(
    backgroundColor: Colors.white,//appbar color
    foregroundColor: Colors.black,//icon and text color
    surfaceTintColor: Colors.white,
    elevation: 0, //no shadow
    iconTheme: const IconThemeData(
      color: Colors.black, //icon color
    )
    ,
    titleTextStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.black,//text color
    ),
  );

  // Dark AppBar Theme
  static AppBarTheme darkAppBarTheme = AppBarTheme(
    backgroundColor: const Color.fromARGB(255, 18, 18, 18),
    foregroundColor: Colors.white,
    elevation: 0,
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    surfaceTintColor: const Color.fromARGB(255, 18, 18, 18),
    titleTextStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );
}