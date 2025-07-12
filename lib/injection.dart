import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:white/repo/user.dart';
import 'bloc/user_bloc.dart';
import 'services/user_srvices.dart';


final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton(() => UserService(setubDioOptions()));
  getIt.registerLazySingleton(() => UserRepo(getIt<UserService>()));
  getIt.registerFactory(() =>  UserBloc(getIt<UserRepo>()));



}


  Dio setubDioOptions() {
    Dio dio = Dio();

    dio..options.connectTimeout = const Duration(seconds: 30)
        ..options.receiveTimeout = const Duration(seconds: 30)
        ..options.sendTimeout = const Duration(seconds: 30);
    dio.interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      requestHeader: true,
      responseHeader: true,
      error: true,
      requestBody: true,));
    return dio;
  }