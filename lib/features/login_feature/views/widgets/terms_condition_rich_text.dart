import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_font_styles.dart';
import 'package:doctor/core/resources/app_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionRichText extends StatelessWidget {
  const TermsAndConditionRichText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(children: [
        TextSpan(
          text: "By logging, you agree to our",
          style: getRegularTextStyle(
              AppFontSize.s11, AppColors.grayText),
        ),
        TextSpan(
          text: " Terms & Conditions",
          style: getMediumTextStyle(
              AppFontSize.s11, AppColors.blackText),
        ),
        TextSpan(
          text: " and ",
          style: getRegularTextStyle(
              AppFontSize.s11, AppColors.grayText),
        ),
        TextSpan(
          text: "PrivacyPolicy.",
          style: getMediumTextStyle(
              AppFontSize.s11, AppColors.blackText),
        )
      ]),
    );
  }
}