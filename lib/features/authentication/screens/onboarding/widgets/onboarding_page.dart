import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants/image_strings.dart'
    as SImages;
import 'package:flutter_application_1/utils/constants/sizes.dart';
import 'package:flutter_application_1/utils/constants/text_strings.dart';
import 'package:flutter_application_1/utils/helpers/helpers_function.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            image: AssetImage(SImages.SImages.onboarding1),
            width: THelpersFunction.screenWidth() * 0.8,
            height: THelpersFunction.screenHeight() * 0.5,
          ),
          const SizedBox(height: 20),
          Text(
            TTexts.onboardingTitle1,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            TTexts.onboardingTitle2,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
