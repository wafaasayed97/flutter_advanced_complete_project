import 'package:flutter_advanced_complete_project/core/networking/api_error_handler.dart';
import 'package:flutter_advanced_complete_project/core/networking/api_result.dart';
import 'package:flutter_advanced_complete_project/core/networking/api_service.dart';

import '../models/sign_up_requset_body.dart';
import '../models/sign_up_response.dart';

class SignUpRepo {
  final ApiService _apiService;
  SignUpRepo( this._apiService);
  Future<ApiResult<SignUpResponse>> signUp(
      SignUpRequestBody signUpRequestBody) async {
    try {
      final response = await _apiService.signUp(signUpRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
