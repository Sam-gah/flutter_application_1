import 'package:flutter/material.dart';

class TBottonSheetTheme {
  TBottonSheetTheme._();

  static BottomSheetThemeData lightButtonSheetTheme = BottomSheetThemeData(
    backgroundColor: Colors.white,
    showDragHandle: true,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    elevation: 8,
  );

  static BottomSheetThemeData darkButtonSheetTheme = BottomSheetThemeData(
    backgroundColor: const Color.fromARGB(255, 30, 30, 30),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    elevation: 8,
  );
}
