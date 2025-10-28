import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/spacing_styles.dart';
import 'package:flutter_application_1/utils/constants/enums.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyles.paddingwithAppBarHeight,
          child: Column(
            children: [
              Column(
                children: const [
                  Text(
                    'Welcome Back',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: TSizes.defaultSpace),
                  Text(
                    'Please login to your account',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
              // Add your login form fields here
              TextField(decoration: const InputDecoration(labelText: 'Email')),
              const SizedBox(height: TSizes.defaultSpace),
              TextField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: TSizes.defaultSpace * 2),
              ElevatedButton(
                onPressed: () {
                  // Handle login logic here
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
