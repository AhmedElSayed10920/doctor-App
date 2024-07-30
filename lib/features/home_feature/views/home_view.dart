import 'package:doctor/core/helpers/spacer.dart';
import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_sizes.dart';
import 'package:doctor/features/home_feature/views/widgets/custom_home_app_bar.dart';
import 'package:doctor/features/home_feature/views/widgets/doctor_speciality_see_all.dart';
import 'package:doctor/features/home_feature/views/widgets/find_nearby_doctor_blue_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.fromLTRB(
            AppSizes.s20.w, AppSizes.s16.h, AppSizes.s20.w, AppSizes.s28.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomHomeAppBar(),
            const FindNearbyDoctorBlueContainer(),
            verticalSpace(AppSizes.s16.h),
            const DoctorSpecialitySeeAll(),
          ],
        ),
      )),
    );
  }
}
