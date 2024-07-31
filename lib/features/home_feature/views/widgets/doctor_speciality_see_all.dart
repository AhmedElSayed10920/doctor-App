import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_font_styles.dart';
import 'package:doctor/core/resources/app_styles.dart';
import 'package:flutter/material.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({super.key, required this.seeAllRowTitle});
  final String seeAllRowTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          seeAllRowTitle,
          style: getSemiBoldTextStyle(AppFontSize.s18, AppColors.darkBlue),
        ),
        const Spacer(),
        Text(
          "See All",
          style: getRegularTextStyle(AppFontSize.s12, AppColors.primaryColor),
        ),
      ],
    );
  }
}
