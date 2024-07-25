import 'package:doctor/core/helpers/extensions.dart';
import 'package:doctor/core/helpers/spacer.dart';
import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_font_styles.dart';
import 'package:doctor/core/resources/app_sizes.dart';
import 'package:doctor/core/resources/app_strings.dart';
import 'package:doctor/core/resources/app_styles.dart';
import 'package:doctor/core/widgets/custom_button.dart';
import 'package:doctor/features/login_feature/views/widgets/already_have_or_not_an_account.dart';
import 'package:doctor/features/login_feature/views/widgets/terms_condition_rich_text.dart';
import 'package:doctor/features/signup_feature/logic/cubit/signup_cubit.dart';
import 'package:doctor/features/signup_feature/views/widgets/sign_up_bloc_listener.dart';
import 'package:doctor/features/signup_feature/views/widgets/sign_up_form_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.s30.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(AppSizes.s30),
              Text(
                AppStrings.signUpTitleText,
                style:
                    getBoldTextStyle(AppFontSize.s24, AppColors.primaryColor),
              ),
              verticalSpace(AppSizes.s10),
              Text(
                AppStrings.signUpContentText,
                style: getRegularTextStyle(AppFontSize.s14, AppColors.grey)
                    .copyWith(height: 1.8, wordSpacing: .5),
              ),
              verticalSpace(AppSizes.s30),
              const SignUpFormBody(),
              verticalSpace(AppSizes.s30),
              CustomButton(onPressed: () {
                context.read<SignupCubit>().emitSignUp();
              }, text: AppStrings.signUpButtonText),
              verticalSpace(AppSizes.s30),
              const TermsAndConditionRichText(),
              verticalSpace(AppSizes.s20),
              AlreadyHaveOrNotAnAccount(
                text: AppStrings.haveAccountText,
                clickedText: AppStrings.loginButtonText,
                onTap: () {
                  context.pop();
                },
              ),
              const SignUpBlocListener(),
            ],
          ),
        ),
      )),
    );
  }
}
