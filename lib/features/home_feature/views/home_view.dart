import 'package:doctor/features/home_feature/views/widgets/custom_home_app_bar.dart';
import 'package:doctor/features/home_feature/views/widgets/find_nearby_doctor_blue_container.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.fromLTRB(20, 16, 20, 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomHomeAppBar(),
            FindNearbyDoctorBlueContainer(),
          ],
        ),
      )),
    );
  }
}
