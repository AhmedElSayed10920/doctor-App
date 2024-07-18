import 'package:doctor/core/resources/app_assests.dart';
import 'package:doctor/core/resources/app_font_styles.dart';
import 'package:doctor/core/resources/app_strings.dart';
import 'package:doctor/core/resources/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppAssests.titleLogo),
        Text(
          AppStrings.appTitle,
          style: getBoldTextStyle(AppFontSize.s24, Colors.black),
        )
      ],
    );
  }
}
