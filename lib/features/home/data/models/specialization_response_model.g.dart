// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecializationResponseModel _$SpecializationResponseModelFromJson(
        Map<String, dynamic> json) =>
    SpecializationResponseModel(
      (json['data'] as List<dynamic>)
          .map((e) => SpecializationData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecializationResponseModelToJson(
        SpecializationResponseModel instance) =>
    <String, dynamic>{
      'data': instance.specializationList,
    };

SpecializationData _$SpecializationDataFromJson(Map<String, dynamic> json) =>
    SpecializationData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      doctorList: (json['doctors'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Doctors.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecializationDataToJson(SpecializationData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'doctors': instance.doctorList,
    };

Doctors _$DoctorFromJson(Map<String, dynamic> json) => Doctors(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      photo: json['photo'] as String?,
      gender: json['gender'] as String?,
      phone: json['phone'] as String?,
      price: (json['appoint_price'] as num?)?.toInt(),
      degree: json['degree'] as String,
    );

Map<String, dynamic> _$DoctorToJson(Doctors instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'photo': instance.photo,
      'gender': instance.gender,
      'phone': instance.phone,
      'appoint_price': instance.price,
      'degree': instance.degree,
    };
