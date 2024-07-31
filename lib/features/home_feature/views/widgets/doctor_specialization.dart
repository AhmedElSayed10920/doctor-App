import 'package:doctor/core/helpers/spacer.dart';
import 'package:doctor/core/resources/app_sizes.dart';
import 'package:doctor/core/resources/app_strings.dart';
import 'package:doctor/features/home_feature/logic/home_cubit/home_cubit.dart';
import 'package:doctor/features/home_feature/logic/home_cubit/home_state.dart';
import 'package:doctor/features/home_feature/views/widgets/doctor_speciality_list_view.dart';
import 'package:doctor/features/home_feature/views/widgets/doctor_speciality_see_all.dart';
import 'package:doctor/features/home_feature/views/widgets/recommended_doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsSpecialization extends StatelessWidget {
  const DoctorsSpecialization({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Failure,
      builder: (context, state) {
        return state.maybeWhen(loading: () {
          return setUpLoading();
        }, success: (data) {
          return setUpSuccess(data);
        }, failure: (errMessage) {
          return const SizedBox.shrink();
        }, orElse: () {
          return const SizedBox.shrink();
        });
      },
    );
  }

  Widget setUpLoading() {
    return const SizedBox(
      height: 100,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget setUpSuccess(data){
    var specializationList = data.specializationData;
          return Expanded(
            child: Column(
              children: [
                DoctorSpecialityListView(
                  specializationData: specializationList ?? [],
                ),
                verticalSpace(AppSizes.s16.h),
                const DoctorSpecialitySeeAll(
                  seeAllRowTitle: AppStrings.seeAllRecommendationDoctors,
                ),
                verticalSpace(AppSizes.s16.h),
                RecommendedDoctorsListView(
                  doctorsModel: specializationList?[0]?.doctors ?? [],
                ),
              ],
            ),
          );

  }
}
