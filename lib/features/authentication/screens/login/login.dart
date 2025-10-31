import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/spacing_styles.dart';
import 'package:flutter_application_1/common/widgets/login/form_divider.dart';
import 'package:flutter_application_1/common/widgets/login/social_buttons.dart';
import 'package:flutter_application_1/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_application_1/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';
import 'package:flutter_application_1/utils/helpers/helpers_function.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelpersFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyles.paddingwithAppBarHeight,
          child: Column(
            //ADding logo , title and subtitle
            children: [
              SLoginHeader(dark: dark),
              SLoginForm(),
              SFormDivider(dark: dark),
              const SizedBox(height: TSizes.spaceBetweenItems),
              //Footer
              SSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
