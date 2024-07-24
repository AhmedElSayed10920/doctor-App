import 'package:doctor/core/services/api_error_handling.dart';
import 'package:doctor/core/services/api_results.dart';
import 'package:doctor/core/services/api_service.dart';
import 'package:doctor/features/login_feature/data/models/login_request_body.dart';
import 'package:doctor/features/login_feature/data/models/login_response_body.dart';

class LoginRepo{
  final ApiService _apiService;
  LoginRepo(this._apiService);

  Future<ApiResults<LoginResponseBody>> login(LoginRequestBody loginRequestBody) async{
    try{
      var response = await _apiService.login(loginRequestBody);
      return ApiResults.success(response);

    }catch(error){
      return ApiResults.failure(ErrorHandler.handle(error));

    }
    
  }
}