import 'package:doctor/core/helpers/extensions.dart';
import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_font_styles.dart';
import 'package:doctor/core/resources/app_sizes.dart';
import 'package:doctor/core/resources/app_strings.dart';
import 'package:doctor/core/resources/app_styles.dart';
import 'package:doctor/core/routing/routers.dart';
import 'package:doctor/core/widgets/custom_button.dart';
import 'package:doctor/features/onboarding_feature/views/widgets/onboarding_pageview.dart';
import 'package:doctor/features/onboarding_feature/views/widgets/onboarding_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppSizes.s30.h),
        child: Column(
          children: [
            const OnboardingTitle(),
            SizedBox(height: AppSizes.s30.h),
            const OnboardingPageView(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.s32.w),
              child: Text(
                AppStrings.onboardingContent,
                style: getRegularTextStyle(AppFontSize.s10, AppColors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: AppSizes.s30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.s32.w),
              child: CustomButton(
                onPressed: () {
                  context.pushNamed(Routers.loginView);
                },
                text: AppStrings.onboardingButtonText,
              ),
            )
          ],
        ),
      )),
    );
  }
}
