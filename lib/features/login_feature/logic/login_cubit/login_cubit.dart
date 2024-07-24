import 'package:doctor/features/login_feature/data/models/login_request_body.dart';
import 'package:doctor/features/login_feature/data/repos/login_repo.dart';
import 'package:doctor/features/login_feature/logic/login_cubit/login_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;

  LoginCubit(this.loginRepo) : super(const LoginState.initial());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    if (formKey.currentState!.validate()) {
      emit(const LoginState.loading());
      final response = await loginRepo.login(loginRequestBody);
      response.when(success: (loginResponse) {
        emit(
          LoginState.success(loginResponse),
        );
      }, failure: (error) {
        emit(
          LoginState.failure(error: error.apiErrorModel.message ?? ''),
        );
      });
    }
  }

  
}
