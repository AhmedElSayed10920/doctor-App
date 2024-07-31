import 'package:doctor/core/services/api_error_handling.dart';
import 'package:doctor/core/services/api_results.dart';
import 'package:doctor/core/services/api_service.dart';
import 'package:doctor/features/home_feature/data/models/doctor_speciality_response_body_model.dart';

class HomeRepo {
  final ApiService _apiService;
  HomeRepo(this._apiService);

  Future<ApiResults<DoctorSpecialityResponseBodyModel>>
      getDoctorSpecialization() async {
    try {
      final response = await _apiService.getDoctorSpecialization();
      return ApiResults.success(response);
    } on Exception catch (error) {
      return ApiResults.failure(ErrorHandler.handle(error));
    }
  }
}
