
import 'package:doctor/features/home_feature/data/models/doctor_speciality_response_body_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.loading() = Loading;
  const factory HomeState.success(DoctorSpecialityResponseBodyModel data) = Success;
  const factory HomeState.failure(String errMessage) = Failure;
}
