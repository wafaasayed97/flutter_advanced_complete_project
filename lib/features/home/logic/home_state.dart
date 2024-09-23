
import 'package:flutter_advanced_complete_project/core/networking/api_error_handler.dart';
import 'package:flutter_advanced_complete_project/features/home/data/models/specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';
@freezed
class HomeState with _$HomeState{
  const factory HomeState.initial() = _Initial;

  ///Specialization state
  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSuccess(SpecializationResponseModel specializationModel) = SpecializationSuccess;
  const factory HomeState.specializationError(ErrorHandler errorHandler) = SpecializationError;

}