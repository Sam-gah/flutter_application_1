import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/theme/custom_theme/button_elevated_theme.dart';
import 'package:flutter_application_1/utils/theme/custom_theme/button_sheet_theme.dart';
import 'package:flutter_application_1/utils/theme/custom_theme/text_field_theme.dart';
import 'custom_theme/text_theme.dart';
import 'package:flutter_application_1/utils/theme/custom_theme/button_elevated_theme.dart';
import 'package:flutter_application_1/utils/theme/custom_theme/chiped_theme.dart';
import 'package:flutter_application_1/utils/theme/custom_theme/check_box_theme.dart';
import 'package:flutter_application_1/utils/theme/custom_theme/outline_theme.dart';
import 'package:flutter_application_1/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter_application_1/utils/theme/custom_theme/appbar_theme.dart ';

class TAppTheme {
  TAppTheme._(); //TO prevent instantiation

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TAppTextTheme.lightTextTheme,
    primaryColor: const Color.fromARGB(255, 33, 150, 243),
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    inputDecorationTheme: TTextFieldTheme.lightTextFieldTheme,

    chipTheme: TChipedTheme.lightChipedTheme,
  ); // Light Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Color.fromARGB(255, 21, 124, 208),
    scaffoldBackgroundColor: const Color.fromARGB(255, 18, 18, 18),
    textTheme: TAppTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    inputDecorationTheme: TTextFieldTheme.darkTextFieldTheme,
    chipTheme: TChipedTheme.darkChipedTheme,
  );
}
