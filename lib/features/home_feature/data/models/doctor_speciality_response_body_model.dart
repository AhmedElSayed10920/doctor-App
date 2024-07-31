import 'package:json_annotation/json_annotation.dart';
part 'doctor_speciality_response_body_model.g.dart';

@JsonSerializable()
class DoctorSpecialityResponseBodyModel {
  @JsonKey(name: 'data')
  final List<SpecializationData?>? specializationData;

  DoctorSpecialityResponseBodyModel({required this.specializationData});

  factory DoctorSpecialityResponseBodyModel.fromJson(
          Map<String, dynamic> json) =>
      _$DoctorSpecialityResponseBodyModelFromJson(json);
}

@JsonSerializable()
class SpecializationData {
  final int? id;
  final String? name;
  @JsonKey(name: 'doctors')
  final List<Doctors?>? doctors;

  SpecializationData(
      {required this.id, required this.name, required this.doctors});

  factory SpecializationData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationDataFromJson(json);
}

@JsonSerializable()
class Doctors {
  final int? id;
  final String? name;
  final String? email;
  final String? phone;
  final String? photo;
  final String? gender;
  @JsonKey(name: 'appoint_price')
  final int? price;
  final String? degree;
  Doctors(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone,
      required this.photo,
      required this.gender,
      required this.price,
      required this.degree});
  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);
}
