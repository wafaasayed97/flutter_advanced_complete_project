import 'package:dio/dio.dart';
import 'package:flutter_advanced_complete_project/core/networking/api_service.dart';
import 'package:flutter_advanced_complete_project/core/networking/dio_factory.dart';
import 'package:flutter_advanced_complete_project/features/login/logic/login_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/data/repo/login_repo.dart';
final  getIt = GetIt.instance;

Future<void>setUpGetIt()async{
  ///Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  ///loginRepo
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));

}