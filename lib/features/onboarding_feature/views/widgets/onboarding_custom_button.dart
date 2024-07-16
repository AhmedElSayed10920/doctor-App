import 'package:doctor/core/helpers/extensions.dart';
import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_font_styles.dart';
import 'package:doctor/core/resources/app_sizes.dart';
import 'package:doctor/core/resources/app_strings.dart';
import 'package:doctor/core/resources/app_styles.dart';
import 'package:doctor/core/routing/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingCustomButton extends StatelessWidget {
  const OnboardingCustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.s32.w),
      child: TextButton(
          onPressed: () {
            context.pushNamed(Routers.loginView);
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(AppColors.primaryColor),
            minimumSize:
                WidgetStateProperty.all(Size(double.infinity, AppSizes.s52.h)),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            )),
          ),
          child: Text(
            AppStrings.onboardingButtonText,
            style: getSemiBoldTextStyle(AppFontSize.s16.sp, Colors.white),
          )),
    );
  }
}
