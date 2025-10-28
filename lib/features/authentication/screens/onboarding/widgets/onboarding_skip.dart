import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/controllers.onboarding/onboarding_controllers.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';
import 'package:flutter_application_1/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getStatusBarHeight(context) - 10,
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingControllers.to.onSkipButtonClicked(),
        child: const Text("Skip"),
      ),
    );
  }
}
