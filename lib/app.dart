import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Themed App')),
        body: const Center(child: Text('Hello, World!')),
      ),
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
