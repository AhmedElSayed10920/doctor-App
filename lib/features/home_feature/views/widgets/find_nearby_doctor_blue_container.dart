import 'package:doctor/core/helpers/spacer.dart';
import 'package:doctor/core/resources/app_assests.dart';
import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_font_styles.dart';
import 'package:doctor/core/resources/app_sizes.dart';
import 'package:doctor/core/resources/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FindNearbyDoctorBlueContainer extends StatelessWidget {
  const FindNearbyDoctorBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.0,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 165.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                image: const DecorationImage(
                    image:
                        AssetImage(AppAssests.findNearbyDoctorBlueBackground),
                    fit: BoxFit.fill),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.s16.w, vertical: AppSizes.s16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Book and\nschedule with\nnearest doctor",
                      style: getMediumTextStyle(AppFontSize.s18, Colors.white),
                    ),
                    verticalSpace(AppSizes.s16.h),
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                const WidgetStatePropertyAll(Colors.white),
                            shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(48.0))),
                          ),
                          child: Text(
                            "Find Nearby",
                            style: getRegularTextStyle(
                                AppFontSize.s12, AppColors.primaryColor),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              right: 16.0,
              bottom: 0,
              child: Image.asset(
                AppAssests.femaleDoctorBlueContainer,
                height: 197.h,
              ))
        ],
      ),
    );
  }
}
