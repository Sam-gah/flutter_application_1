import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:flutter_application_1/utils/theme/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OnBoardingScreen(),
      theme: TAppTheme.lightTheme,

      //darkTheme: TAppTheme.darkTheme,
      //themeMode: ThemeMode.system,
    );
  }
}
