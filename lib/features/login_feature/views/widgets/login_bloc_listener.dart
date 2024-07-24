import 'package:doctor/core/helpers/extensions.dart';
import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_styles.dart';
import 'package:doctor/core/routing/routers.dart';
import 'package:doctor/features/login_feature/logic/login_cubit/login_cubit.dart';
import 'package:doctor/features/login_feature/logic/login_cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Failure,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
          showDialog(
              context: context,
              builder: (context) => const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    ),
                  ));
        }, success: (loginResponse) {
          context.pop();
          context.pushNamed(Routers.homeView);
        }, failure: (error) {
          context.pop();
          wrongPasswordDialog(context, error);
        });
      },
      child: const SizedBox.shrink(),
    );
  }

  void wrongPasswordDialog(BuildContext context, String error) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              icon: const Icon(
                Icons.error,
                color: Colors.red,
              ),
              title: Text(
                "Login Failed",
                style: getBoldTextStyle(16.0, Colors.black),
              ),
              content: Text(
                error,
                style: getMediumTextStyle(14.0, AppColors.primaryColor),
                textAlign: TextAlign.center,
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.red),
                    ),
                    child: Text(
                      'Okay',
                      style: getSemiBoldTextStyle(14.0, Colors.white),
                    ))
              ],
            ));
  }
}
