import 'package:doctor/core/services/api_error_handling.dart';
import 'package:doctor/core/services/api_results.dart';
import 'package:doctor/core/services/api_service.dart';
import 'package:doctor/features/signup_feature/data/models/sign_up_request_body.dart';
import 'package:doctor/features/signup_feature/data/models/sign_up_response_body.dart';

class SignUpRepo {
  final ApiService _apiService;

  SignUpRepo(this._apiService);

  Future<ApiResults<SignUpResponseBody>> signUp(
      SignUpRequestBody signUpRequestBody) async {
    try {
      final response = await _apiService.signUp(signUpRequestBody);
      return ApiResults.success(response);
    } catch (error) {
      return ApiResults.failure(ErrorHandler.handle(error));
    }
  }
}
