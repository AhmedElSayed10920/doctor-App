import 'package:doctor/core/helpers/extensions.dart';
import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_styles.dart';
import 'package:doctor/core/routing/routers.dart';
import 'package:doctor/features/signup_feature/logic/cubit/signup_cubit.dart';
import 'package:doctor/features/signup_feature/logic/cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Failure,
      listener: (context, state) {
        state.whenOrNull(loading: () {
          showDialog(
              context: context,
              builder: (context) => const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    ),
                  ));
        }, success: (signUpResponse) {
          context.pop();
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    icon: const Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 40,
                    ),
                    content: Text(
                      "Account created Successfully",
                      style: getBoldTextStyle(18.0, Colors.green),
                      textAlign: TextAlign.center,
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            context.pushNamed(Routers.loginView);
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.green),
                          ),
                          child: Text(
                            'Done',
                            style: getSemiBoldTextStyle(14.0, Colors.white),
                          ))
                    ],
                  ));
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
                "Signup Failed",
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
                      'Try again!',
                      style: getSemiBoldTextStyle(14.0, Colors.white),
                    ))
              ],
            ));
  }
}
