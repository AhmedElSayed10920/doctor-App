import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_font_styles.dart';
import 'package:doctor/core/resources/app_sizes.dart';
import 'package:doctor/core/resources/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    this.obscureText = false,
    required this.hintText,
    this.suffixIcon,
    required this.validator,
  });
  final TextEditingController? controller;
  final bool obscureText;
  final String hintText;
  final String? Function(String?) validator;

  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (val) {
        return validator(val);
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorColor: AppColors.primaryColor,
      obscureText: obscureText,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        hintStyle: getMediumTextStyle(AppFontSize.s14, AppColors.lightGrey),
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.symmetric(
            horizontal: AppSizes.s17.w, vertical: AppSizes.s20.h),
        fillColor: AppColors.fillLighterGrey,
        enabledBorder: getTextFieldBorder(AppColors.lighterGrey),
        focusedBorder: getTextFieldBorder(AppColors.primaryColor),
        errorBorder: getTextFieldBorder(Colors.red),
        focusedErrorBorder: getTextFieldBorder(Colors.red),
      ),
    );
  }
}

OutlineInputBorder getTextFieldBorder(Color color) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(AppSizes.s16),
    borderSide: BorderSide(
      color: color,
    ),
  );
}
