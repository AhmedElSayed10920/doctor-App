import 'package:doctor/features/signup_feature/data/models/sign_up_request_body.dart';
import 'package:doctor/features/signup_feature/data/repos/sign_up_repo.dart';
import 'package:doctor/features/signup_feature/logic/cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignUpRepo signUpRepo;
  SignupCubit(this.signUpRepo) : super(const SignupState.initial());

  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordConfirmation = TextEditingController();

  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

  void emitSignUp() async {
    if (signUpFormKey.currentState!.validate()) {
      final response = await signUpRepo.signUp(SignUpRequestBody(username.text,
          email.text, phone.text, 0, password.text, passwordConfirmation.text));
      response.when(success: (signUpResponse) {
        emit(SignupState.success(signUpResponse));
      }, failure: (error) {
        emit(SignupState.failure(error: error.apiErrorModel.message ?? ''));
      });
    }
  }
}
