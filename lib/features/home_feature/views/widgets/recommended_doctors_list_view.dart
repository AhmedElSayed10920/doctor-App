import 'package:doctor/core/resources/app_sizes.dart';
import 'package:doctor/features/home_feature/data/models/doctor_speciality_response_body_model.dart';
import 'package:doctor/features/home_feature/views/widgets/recommended_doctors_list_view_body.dart';
import 'package:flutter/material.dart';

class RecommendedDoctorsListView extends StatelessWidget {
  final List<Doctors?> doctorsModel;
  const RecommendedDoctorsListView({super.key, required this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: AppSizes.s5),
        child: ListView.builder(
            itemCount: doctorsModel.length,
            itemBuilder: (context, index) {
              return ReccomendedDoctorsListViewBody(
                doctorsModel: doctorsModel[index],
                index: index,
              );
            }),
      ),
    );
  }
}
