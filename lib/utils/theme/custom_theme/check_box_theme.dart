import 'package:flutter/material.dart';

class TCheckBoxTheme {
  TCheckBoxTheme._();

  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return Colors.grey.shade300;
      }
      return Colors.blue;
    }),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return Colors.grey;
      }
      return Colors.transparent;
    }),
    side: BorderSide(color: Colors.grey.shade400, width: 2),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  );

  static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return Colors.grey.shade800;
      }
      return Colors.blue;
    }),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return Colors.grey.shade600;
      }
      return Colors.white;
    }),
    side: BorderSide(color: Colors.grey.shade700, width: 2),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  );
}
