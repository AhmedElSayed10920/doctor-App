import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_font_styles.dart';
import 'package:doctor/core/resources/app_styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveOrNotAnAccount extends StatelessWidget {
  const AlreadyHaveOrNotAnAccount({
    super.key, required this.text, required this.clickedText, this.onTap,
  });
  final String text;
  final String clickedText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: getRegularTextStyle(
              AppFontSize.s11, AppColors.blackText),
        ),
        GestureDetector(
          onTap: onTap ,
            child: Text(
          clickedText,
          style: getSemiBoldTextStyle(
              AppFontSize.s11, AppColors.primaryColor),
        )),
      ],
    );
  }
}