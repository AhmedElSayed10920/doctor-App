import 'package:doctor/core/helpers/spacer.dart';
import 'package:doctor/core/resources/app_colors.dart';
import 'package:doctor/core/resources/app_font_styles.dart';
import 'package:doctor/core/resources/app_sizes.dart';
import 'package:doctor/core/resources/app_strings.dart';
import 'package:doctor/core/resources/app_styles.dart';
import 'package:doctor/core/widgets/custom_button.dart';
import 'package:doctor/core/widgets/custom_text_form_field.dart';
import 'package:doctor/features/login_feature/views/widgets/already_have_or_not_an_account.dart';
import 'package:doctor/features/login_feature/views/widgets/forget_password_text_button.dart';
import 'package:doctor/features/login_feature/views/widgets/terms_condition_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.s30.w),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(AppSizes.s60),
                Text(
                  AppStrings.loginWelcomeText,
                  style:
                      getBoldTextStyle(AppFontSize.s24, AppColors.primaryColor),
                ),
                verticalSpace(AppFontSize.s10),
                Text(
                  AppStrings.loginContentText,
                  style: getRegularTextStyle(AppFontSize.s14, AppColors.grey)
                      .copyWith(height: 1.8, wordSpacing: .5),
                ),
                verticalSpace(AppSizes.s30),
                const CustomTextFormField(
                  hintText: AppStrings.emailHintText,
                ),
                verticalSpace(AppSizes.s10),
                CustomTextFormField(
                  hintText: AppStrings.passwordHintText,
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.visibility,
                        color: AppColors.lightGrey,
                      )),
                ),
                const ForgetPasswordTextButton(),
                verticalSpace(AppSizes.s20),
                CustomButton(
                    onPressed: () {}, text: AppStrings.loginButtonText),
                verticalSpace(AppSizes.s50),
                const TermsAndConditionRichText(),
                verticalSpace(AppSizes.s20),
                AlreadyHaveOrNotAnAccount(
                  text: AppStrings.haveNotAccountText,
                  clickedText: AppStrings.signUpButtonText,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
