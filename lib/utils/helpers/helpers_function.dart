import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THelpersFunction {
  static Color? getColor(String value) {
    //let's define our products specific colors here
    if (value == "red") {
      return Colors.red;
    } else if (value == "blue") {
      return Colors.blue;
    } else if (value == "green") {
      return Colors.green;
    } else if (value == "yellow") {
      return Colors.yellow;
    } else if (value == "black") {
      return Colors.black;
    } else if (value == "white") {
      return Colors.white;
    } else if (value == "grey") {
      return Colors.grey;
    } else {
      return null;
    }
  }

  // Show SnackBar
  static void showSnackBar(String message) {
    ScaffoldMessenger.of(
      Get.context!,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  //show Alret
  static void showAlertDialog(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  //Navigate to another screen
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }

  //Truncate String
  static String truncateString(String text, int maxlength) {
    if (text.length <= maxlength) {
      return text;
    } else {
      return '${text.substring(0, maxlength)}...';
    }
  }

  //Darkmode Check
  static bool isDarkMode(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark;
  }

  // Get Screen Size
  static Size screemSize() {
    return MediaQuery.of(Get.context!).size;
  }

  //Get Screen Width
  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  //Get Screen Height
  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  //Remove Duplicates
  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  //wrap Widget
  static List<Widget> wrapWidegets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
        i,
        i + rowSize > widgets.length ? widgets.length : i + rowSize,
      );
      wrappedList.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: rowChildren,
        ),
      );
    }
    return wrappedList;
  }
}
