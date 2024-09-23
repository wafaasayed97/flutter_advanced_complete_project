import 'package:freezed_annotation/freezed_annotation.dart';

part 'specialization_response_model.g.dart';

@JsonSerializable()
class SpecializationResponseModel {
  @JsonKey(name: "data")
  List<SpecializationData?>? specializationList;

  SpecializationResponseModel(this.specializationList);

  factory SpecializationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationResponseModelFromJson(json);
}

@JsonSerializable()
class SpecializationData {
  int? id;
  String? name;
  @JsonKey(name: 'doctors')
  List<Doctors?>? doctorList;

  SpecializationData({this.id, this.name, this.doctorList});

  factory SpecializationData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationDataFromJson(json);
}

@JsonSerializable()
class Doctors {
  int? id;
  String? name;
  String? email;
  String? photo;
  String? gender;
  String? phone;
  @JsonKey(name: 'appoint_price')
  int? price;
  String degree;
  Doctors(
      {this.id,
      this.name,
      this.email,
      this.photo,
      this.gender,
      this.phone,
      this.price,
      required this.degree});
  factory Doctors.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);
}
