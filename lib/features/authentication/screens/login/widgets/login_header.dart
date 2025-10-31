import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants/image_strings.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';
import 'package:flutter_application_1/utils/constants/text_strings.dart';

class SLoginHeader extends StatelessWidget {
  const SLoginHeader({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          alignment: Alignment.topLeft,
          image: AssetImage(dark ? SImages.logo : SImages.backgroundDark),
        ),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),

        const SizedBox(height: TSizes.sm),
        Text(
          TTexts.loginSubtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
