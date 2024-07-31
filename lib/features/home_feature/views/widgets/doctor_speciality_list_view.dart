import 'package:doctor/core/resources/app_sizes.dart';
import 'package:doctor/features/home_feature/data/models/doctor_speciality_response_body_model.dart';
import 'package:doctor/features/home_feature/views/widgets/doctor_speciality_list_view_body.dart';
import 'package:flutter/material.dart';

class DoctorSpecialityListView extends StatelessWidget {
  final List<SpecializationData?> specializationData;
  const DoctorSpecialityListView({super.key, required this.specializationData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.only(left: AppSizes.s5),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: specializationData.length,
          itemBuilder: (context, index) {
            return DoctorsSpecialityListViewBody(
              index: index,
              specializationData: specializationData[index],
            );
          },
        ),
      ),
    );
  }
}
