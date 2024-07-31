import 'package:doctor/core/helpers/spacer.dart';
import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_font_styles.dart';
import 'package:doctor/core/resources/app_sizes.dart';
import 'package:doctor/core/resources/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendedDoctorsListView extends StatelessWidget {
  const RecommendedDoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: AppSizes.s5),
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 16),
                height: 126,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        "https://img.freepik.com/premium-photo/smiling-happy-doctor-pointing-with-finger-blue-background_190851-1163.jpg",
                        width: 110.w,
                        height: 110.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    horizontalSpace(16.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          verticalSpace(AppSizes.s10.h),
                          Text(
                            "Dr. Randy Wigham",
                            style: getBoldTextStyle(
                                AppFontSize.s16, AppColors.darkBlue),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "General | RSUD Gatot Subroto",
                            style: getMediumTextStyle(
                                AppFontSize.s12, AppColors.grey),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "email@gmail.com",
                            style: getMediumTextStyle(
                                AppFontSize.s12, AppColors.grey),
                            overflow: TextOverflow.ellipsis,
                          ),
                          verticalSpace(AppSizes.s10.h),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
