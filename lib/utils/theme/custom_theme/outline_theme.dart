import 'package:flutter/material.dart';

class TOutlineTheme {
  TOutlineTheme._();

  static OutlinedBorder lightOutlineBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8),
    side: BorderSide(color: Colors.grey.shade400, width: 1),
  );

  static OutlinedBorder darkOutlineBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8),
    side: BorderSide(color: Colors.grey.shade600, width: 1),
  );
}
