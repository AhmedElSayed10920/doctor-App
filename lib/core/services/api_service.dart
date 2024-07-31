import 'package:dio/dio.dart';
import 'package:doctor/features/home_feature/data/models/doctor_speciality_response_body_model.dart';
import 'package:doctor/features/login_feature/data/models/login_request_body.dart';
import 'package:doctor/features/login_feature/data/models/login_response_body.dart';
import 'package:doctor/features/signup_feature/data/models/sign_up_request_body.dart';
import 'package:doctor/features/signup_feature/data/models/sign_up_response_body.dart';
import 'package:retrofit/retrofit.dart';
import 'package:doctor/core/services/api_constants.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponseBody> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signUp)
  Future<SignUpResponseBody> signUp(
    @Body() SignUpRequestBody signUpRequestBody,
  );

   @GET(ApiConstants.doctorSpecializationEP)
  Future<DoctorSpecialityResponseBodyModel> getDoctorSpecialization();

  
  

  

}
