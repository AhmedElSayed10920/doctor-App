import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_font_styles.dart';
import 'package:doctor/core/resources/app_strings.dart';
import 'package:doctor/core/resources/app_styles.dart';
import 'package:flutter/material.dart';

class ForgetPasswordTextButton extends StatelessWidget {
  const ForgetPasswordTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: () {},
            child: Text(
              AppStrings.forgetPasswordText,
              style: getRegularTextStyle(
                  AppFontSize.s12, AppColors.primaryColor),
              textAlign: TextAlign.end,
            )),
      ],
    );
  }
}