import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor/core/helpers/spacer.dart';
import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_font_styles.dart';
import 'package:doctor/core/resources/app_sizes.dart';
import 'package:doctor/core/resources/app_styles.dart';
import 'package:doctor/features/home_feature/data/models/doctor_speciality_response_body_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReccomendedDoctorsListViewBody extends StatelessWidget {
  final Doctors? doctorsModel;
  final int? index;
  const ReccomendedDoctorsListViewBody({
    super.key,
    this.doctorsModel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      height: 126,
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                width: 110.w,
                height: 110.h,
                fit: BoxFit.cover,
                imageUrl:
                    "https://img.freepik.com/premium-photo/smiling-happy-doctor-pointing-with-finger-blue-background_190851-1163.jpg",
                progressIndicatorBuilder: (context, url, downloadProgress) {
                  return CircularProgressIndicator(
                    value: downloadProgress.progress,
                  );
                },
                errorWidget: (context, url, error) => const Icon(Icons.error),
              )),
          horizontalSpace(16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                verticalSpace(AppSizes.s10.h),
                Text(
                  doctorsModel?.name ?? '',
                  style: getBoldTextStyle(AppFontSize.s16, AppColors.darkBlue),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "${doctorsModel?.degree} | ${doctorsModel?.phone}",
                  style: getMediumTextStyle(AppFontSize.s12, AppColors.grey),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  doctorsModel?.email ?? 'Email',
                  style: getMediumTextStyle(AppFontSize.s12, AppColors.grey),
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(AppSizes.s10.h),
              ],
            ),
          )
        ],
      ),
    );
  }
}
