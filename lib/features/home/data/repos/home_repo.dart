import 'package:flutter_advanced_complete_project/core/networking/api_error_handler.dart';
import 'package:flutter_advanced_complete_project/core/networking/api_result.dart';
import 'package:flutter_advanced_complete_project/features/home/data/apis/home_api_service.dart';
import 'package:flutter_advanced_complete_project/features/home/data/models/specialization_response_model.dart';

class HomeRepo {
final HomeApiService homeApiService;

  HomeRepo( this.homeApiService);
  Future<ApiResult<SpecializationResponseModel>>getSpecialization()async{
    try{
      final response = await homeApiService.getSpecialization();
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}