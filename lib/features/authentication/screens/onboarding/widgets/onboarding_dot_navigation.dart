import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/controllers.onboarding/onboarding_controllers.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/device/device_utility.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingControllers.to;
    final bool dark = TDeviceUtils.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavBarHeight(context) + 20,
      left: TSizes.defaultSpace,

      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.jumpToPage,
        count: 3,
        effect: ExpandingDotsEffect(
          dotHeight: 12,
          dotWidth: 12,
          activeDotColor:
              dark ? TColors.textColorDark : TColors.blackColorLight,
        ),
        axisDirection: Axis.horizontal,
      ),
    );
  }
}
