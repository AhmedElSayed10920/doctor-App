import 'package:doctor/core/helpers/input_validate.dart';
import 'package:doctor/core/helpers/spacer.dart';
import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_sizes.dart';
import 'package:doctor/core/resources/app_strings.dart';
import 'package:doctor/core/widgets/custom_text_form_field.dart';
import 'package:doctor/features/login_feature/logic/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginFormBody extends StatefulWidget {
  const LoginFormBody({super.key});

  @override
  State<LoginFormBody> createState() => _LoginFormBodyState();
}

class _LoginFormBodyState extends State<LoginFormBody> {
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: AppStrings.emailHintText,
            controller: context.read<LoginCubit>().emailController,
            validator: (value) {
              return inputValidate(value!, 10, 50, 'email');
            },
          ),
          verticalSpace(AppSizes.s10),
          CustomTextFormField(
            hintText: AppStrings.passwordHintText,
            controller: context.read<LoginCubit>().passwordController,
            obscureText: isObscureText,
            validator: (value) {
              if (value!.isEmpty) {
                return "This field is required";
              }else{
                return null;
              }
            },
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                icon: Icon(
                  isObscureText ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.lightGrey,
                )),
          ),
        ],
      ),
    );
  }
}
