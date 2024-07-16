import 'package:doctor/core/resources/app_sizes.dart';
import 'package:doctor/core/resources/theme.dart';
import 'package:doctor/core/routing/app_routing.dart';
import 'package:doctor/features/onboarding_feature/views/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(AppSizes.screenWidth, AppSizes.screenHeight),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: getThemeData(),
        onGenerateRoute: AppRouting().generateRoute,
        debugShowCheckedModeBanner: false,
        home: const OnboardingView(),
      ),
    );
  }
}
