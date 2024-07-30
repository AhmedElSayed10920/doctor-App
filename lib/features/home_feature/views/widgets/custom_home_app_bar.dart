import 'package:doctor/core/helpers/spacer.dart';
import 'package:doctor/core/resources/app_assests.dart';
import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_font_styles.dart';
import 'package:doctor/core/resources/app_sizes.dart';
import 'package:doctor/core/resources/app_strings.dart';
import 'package:doctor/core/resources/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.hiMessage,
              style: getBoldTextStyle(AppFontSize.s18, AppColors.darkBlue),
            ),
            verticalSpace(AppSizes.s5.h),
            Text(
              AppStrings.welcomeMessage,
              style: getRegularTextStyle(AppFontSize.s11, AppColors.darkGrey),
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: AppColors.greyFill,
          child: SvgPicture.asset(AppAssests.homeCustomAppBarNotificationIcon),
        )
      ],
    );
  }
}
