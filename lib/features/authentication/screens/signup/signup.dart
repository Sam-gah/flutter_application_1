import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/login/form_divider.dart';
import 'package:flutter_application_1/common/widgets/login/social_buttons.dart';
import 'package:flutter_application_1/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';
import 'package:flutter_application_1/utils/constants/text_strings.dart';
import 'package:flutter_application_1/utils/helpers/helpers_function.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/utils.dart';
import 'package:iconsax/iconsax.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelpersFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TTexts.loginTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: TSizes.spaceBetweenSections),

              // Form
              SSignupForm(dark: true),
              SizedBox(height: TSizes.spaceBetweenSections),
              //IDvider
              SFormDivider(
                dividerText: TTexts.orSignupwith.capitalize,
                dark: true,
              ),
              SizedBox(height: TSizes.spaceBetweenItems),
              SSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
