import 'package:doctor/core/resources/app_assests.dart';
import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_font_styles.dart';
import 'package:doctor/core/resources/app_sizes.dart';
import 'package:doctor/core/resources/app_strings.dart';
import 'package:doctor/core/resources/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AppAssests.onboardingScaffoldBackground),
        Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0.0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [0.14, 0.4])),
          child: Image.asset(AppAssests.onboardingDoctorImage),
        ),
        Positioned(
            bottom: AppSizes.s20.h,
            right: 0,
            left: 0,
            child: Text(
              AppStrings.onboardingTitle,
              style:
                  getBoldTextStyle(AppFontSize.s32.sp, AppColors.primaryColor),
              textAlign: TextAlign.center,
            ))
      ],
    );
  }
}
