import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/controllers.onboarding/onboarding_controllers.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';
import 'package:flutter_application_1/utils/device/device_utility.dart';
import 'package:flutter_application_1/utils/helpers/helpers_function.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelpersFunction.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavBarHeight(context) + 20,
      right: TSizes.defaultSpace,

      child: ElevatedButton(
        onPressed: () => OnBoardingControllers.to.onNextButtonClicked(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(16),
          backgroundColor: dark ? TColors.primaryColor : TColors.whiteColor,
        ),
        child: Icon(Iconsax.arrow_right_3, color: TColors.accentColorLight),
      ),
    );
  }
}
