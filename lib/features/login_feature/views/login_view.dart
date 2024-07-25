import 'package:doctor/core/helpers/extensions.dart';
import 'package:doctor/core/helpers/spacer.dart';
import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_font_styles.dart';
import 'package:doctor/core/resources/app_sizes.dart';
import 'package:doctor/core/resources/app_strings.dart';
import 'package:doctor/core/resources/app_styles.dart';
import 'package:doctor/core/routing/routers.dart';
import 'package:doctor/core/widgets/custom_button.dart';
import 'package:doctor/features/login_feature/data/models/login_request_body.dart';
import 'package:doctor/features/login_feature/logic/login_cubit/login_cubit.dart';
import 'package:doctor/features/login_feature/views/widgets/already_have_or_not_an_account.dart';
import 'package:doctor/features/login_feature/views/widgets/forget_password_text_button.dart';
import 'package:doctor/features/login_feature/views/widgets/login_bloc_listener.dart';
import 'package:doctor/features/login_feature/views/widgets/login_form_body.dart';
import 'package:doctor/features/login_feature/views/widgets/terms_condition_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                verticalSpace(AppSizes.s60),
                Text(
                  AppStrings.loginWelcomeText,
                  style:
                      getBoldTextStyle(AppFontSize.s24, AppColors.primaryColor),
                ),
                verticalSpace(AppSizes.s10),
                Text(
                  AppStrings.loginContentText,
                  style: getRegularTextStyle(AppFontSize.s14, AppColors.grey)
                      .copyWith(height: 1.8, wordSpacing: .5),
                ),
                verticalSpace(AppSizes.s30),
                const LoginFormBody(),
                const ForgetPasswordTextButton(),
                verticalSpace(AppSizes.s20),
                CustomButton(
                    onPressed: () {
                      onClickLogin(context);
                    },
                    text: AppStrings.loginButtonText),
                verticalSpace(AppSizes.s50),
                const TermsAndConditionRichText(),
                verticalSpace(AppSizes.s20),
                AlreadyHaveOrNotAnAccount(
                  text: AppStrings.haveNotAccountText,
                  clickedText: AppStrings.signUpButtonText,
                  onTap: () {
                    context.pushNamed(Routers.signUpView);
                  },
                ),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onClickLogin(BuildContext context) {
     context.read<LoginCubit>().emitLoginStates(LoginRequestBody(
        email: context.read<LoginCubit>().emailController.text,
        password: context
            .read<LoginCubit>()
            .passwordController
            .text));
  }
}
