import 'package:flutter/material.dart';
import 'package:flutter_application_1/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 👇 Optional: delay startup so you can actually see the splash screen
  //await Future.delayed(const Duration(seconds: 2));

  runApp(const App());
}
