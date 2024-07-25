import 'package:doctor/core/helpers/input_validate.dart';
import 'package:doctor/core/helpers/spacer.dart';
import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_sizes.dart';
import 'package:doctor/core/resources/app_strings.dart';
import 'package:doctor/core/widgets/custom_text_form_field.dart';
import 'package:doctor/features/signup_feature/logic/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpFormBody extends StatefulWidget {
  const SignUpFormBody({super.key});

  @override
  State<SignUpFormBody> createState() => _SignUpFormBodyState();
}

class _SignUpFormBodyState extends State<SignUpFormBody> {
  bool isObscureText1 = true;
  bool isObscureText2 = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().signUpFormKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: AppStrings.usernameHintText,
            controller: context.read<SignupCubit>().username,
            validator: (value) {
              return inputValidate(value!, 4, 20, 'username');
            },
          ),
          verticalSpace(AppSizes.s10),
          CustomTextFormField(
            hintText: AppStrings.emailHintText,
            controller: context.read<SignupCubit>().email,
            validator: (value) {
              return inputValidate(value!, 10, 50, 'email');
            },
          ),
          verticalSpace(AppSizes.s10),
          CustomTextFormField(
            hintText: AppStrings.phoneHintText,
            controller: context.read<SignupCubit>().phone,
            validator: (value) {
              return inputValidate(value!, 10, 50, 'phone');
            },
          ),
          verticalSpace(AppSizes.s10),
          CustomTextFormField(
            hintText: AppStrings.passwordHintText,
            obscureText: isObscureText1,
            controller: context.read<SignupCubit>().password,
            validator: (value) {
             return inputValidate(value!, 8, 50, 'password');
            },
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isObscureText1 = !isObscureText1;
                  });
                },
                icon: Icon(
                  isObscureText1 ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.lightGrey,
                )),
          ),
          verticalSpace(AppSizes.s10),
          CustomTextFormField(
            hintText: AppStrings.passwordConfirmationHintText,
            controller: context.read<SignupCubit>().passwordConfirmation,
            obscureText: isObscureText2,
            validator: (value) {
              return inputValidate(value!, 8, 50, 'password');
            },
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isObscureText2 = !isObscureText2;
                  });
                },
                icon: Icon(
                  isObscureText2 ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.lightGrey,
                )),
          ),
        ],
      ),
    );
  }
}
