import 'package:doctor/core/helpers/spacer.dart';
import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_font_styles.dart';
import 'package:doctor/core/resources/app_sizes.dart';
import 'package:doctor/core/resources/app_styles.dart';
import 'package:doctor/features/home_feature/data/view_models/doctor_speciality_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.only(left: AppSizes.s5),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: doctorsSpeciality.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : AppSizes.s32.w),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: AppColors.lightAccentBlue,
                    child: SvgPicture.asset(doctorsSpeciality[index].specialityIcon,width: 40.w,height: 40.h,),
                  ),
                  verticalSpace(AppSizes.s12),
                  Text(
                    doctorsSpeciality[index].specialityTitle,
                    style: getRegularTextStyle(AppFontSize.s12, AppColors.darkBlue),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
