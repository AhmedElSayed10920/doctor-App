import 'package:doctor/core/helpers/spacer.dart';
import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_font_styles.dart';
import 'package:doctor/core/resources/app_sizes.dart';
import 'package:doctor/core/resources/app_styles.dart';
import 'package:doctor/features/home_feature/data/models/doctor_speciality_response_body_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorsSpecialityListViewBody extends StatelessWidget {
  const DoctorsSpecialityListViewBody({
    super.key,
    this.specializationData,
    required this.index,
  });
  final SpecializationData? specializationData;

  final int? index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsetsDirectional.only(start: index == 0 ? 0 : AppSizes.s32.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.lightAccentBlue,
            child: SvgPicture.asset(
              "assets/icons/doctor_icon.svg",
              width: 40.w,
              height: 40.h,
            ),
          ),
          verticalSpace(AppSizes.s12),
          Text(
            specializationData?.name ?? '',
            style: getRegularTextStyle(AppFontSize.s12, AppColors.darkBlue),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
