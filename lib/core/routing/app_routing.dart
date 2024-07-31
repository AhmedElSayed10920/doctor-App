import 'package:doctor/core/di/dependency_injection.dart';
import 'package:doctor/core/routing/routers.dart';
import 'package:doctor/features/home_feature/logic/home_cubit/home_cubit.dart';
import 'package:doctor/features/home_feature/views/home_view.dart';
import 'package:doctor/features/login_feature/logic/login_cubit/login_cubit.dart';
import 'package:doctor/features/login_feature/views/login_view.dart';
import 'package:doctor/features/signup_feature/logic/cubit/signup_cubit.dart';
import 'package:doctor/features/signup_feature/views/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouting {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routers.loginView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginView(),
                ));
      case Routers.signUpView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<SignupCubit>(),
                  child: const SignUpView(),
                ));
      case Routers.homeView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => HomeCubit(getIt())..getDoctorSpecialization(),
                  child: const HomeView(),
                ));
      default:
        return null;
    }
  }
}
