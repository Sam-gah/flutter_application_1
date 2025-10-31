import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';

class SFormDivider extends StatelessWidget {
  const SFormDivider({
    super.key,
    required this.dark,
    required this.dividerText,
  });

  final bool dark;

  final dynamic dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGreyColor : TColors.greyColor,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(dividerText, style: Theme.of(context).textTheme.bodyMedium),
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGreyColor : TColors.greyColor,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
