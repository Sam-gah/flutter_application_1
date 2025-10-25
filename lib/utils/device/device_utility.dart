import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TDeviceUtils {
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus();
  }

  /// Sets the status bar color
  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  /// Checks if the device is in landscape orientation
  static bool isLandscapeOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  /// Checks if the device is in portrait orientation
  static bool isPortraitOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom > 0;
  }

  //Set full screen mode
  static Future<void> setFullScreenMode() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  //Exit full screen mode
  static Future<void> exitFullScreenMode() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  //getScreenHeight
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  //getScreenWidth
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  //getPixelRatio
  static double getPixelRatio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  //getStatusBarHeight
  static double getStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  //getBottomNavBarHeight
  static double getBottomNavBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }

  //iskeyboardVisible
  static Future<bool> isKeyboardVisible() async {
    final viewInsets = View.of(Get.context!).viewInsets;
    return viewInsets.bottom > 0;
  }

  //isPhysicalDevice
  static Future<bool> isPhyscialDevice() async {
    return defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.android;
  }

  //vibrateDevice
  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () {
      HapticFeedback.vibrate();
    });
  }

  //setPreferredOrientations
  static Future<void> setPreferredOrientations(
    List<DeviceOrientation> orientations,
  ) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  //hideStatusBar
  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  //showStatusBar
  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
  }

  //hasInternetConnection
  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      } else {
        return false;
      }
    } on SocketException catch (_) {
      return false;
    }
  }

  //isIos
  static bool isIos() {
    return !kIsWeb && Platform.isIOS;
  }

  //isAndroid
  static bool isAndroid() {
    return !kIsWeb && Platform.isAndroid;
  }

  //LaunchURL
  static Future<void> launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
