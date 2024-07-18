import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_font_styles.dart';
import 'package:doctor/core/resources/app_sizes.dart';
import 'package:doctor/core/resources/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.text,
  });
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.primaryColor),
          minimumSize:
              WidgetStateProperty.all(Size(double.infinity, AppSizes.s52.h)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.s16),
          )),
        ),
        child: Text(
          text,
          style: getSemiBoldTextStyle(AppFontSize.s16, Colors.white),
          textAlign: TextAlign.center,
        ));
  }
}
