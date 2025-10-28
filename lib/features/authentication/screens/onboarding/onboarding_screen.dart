import "package:flutter/material.dart";
import "package:flutter_application_1/features/authentication/controllers.onboarding/onboarding_controllers.dart";
import "package:flutter_application_1/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart";
import "package:flutter_application_1/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart";
import "package:flutter_application_1/features/authentication/screens/onboarding/widgets/onboarding_page.dart";
import "package:flutter_application_1/features/authentication/screens/onboarding/widgets/onboarding_skip.dart";
import "package:flutter_application_1/utils/constants/colors.dart";
import 'package:flutter_application_1/utils/constants/image_strings.dart'
    as SImages;
import "package:flutter_application_1/utils/constants/sizes.dart";
import "package:flutter_application_1/utils/constants/text_strings.dart";
import "package:flutter_application_1/utils/device/device_utility.dart";
import "package:flutter_application_1/utils/helpers/helpers_function.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingControllers());
    return Scaffold(
      appBar: AppBar(title: const Text("Onboarding")),
      body: Stack(
        children: [
          //Horizontal PageView for onboarding content
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.onPageChanged,

            children: [
              OnBoardingPage(
                image: SImages.SImages.onboarding1,
                title: TTexts.onboardingTitle1,
                subTitle: Text(TTexts.onboardingSubtitle1).toString(),
              ),
              OnBoardingPage(
                image: SImages.SImages.onboarding1,
                title: TTexts.onboardingTitle1,
                subTitle: Text(TTexts.onboardingSubtitle1).toString(),
              ),
              OnBoardingPage(
                image: SImages.SImages.onboarding1,
                title: TTexts.onboardingTitle1,
                subTitle: Text(TTexts.onboardingSubtitle1).toString(),
              ),
            ],
          ),

          //Skip button
          OnBoardingSkip(),

          //Dots Indicator
          OnBoardingDotNavigation(),

          //Next Button
          OnBoardingNextButton(),

          //Get Started Button
        ],
      ),
    );
  }
}
