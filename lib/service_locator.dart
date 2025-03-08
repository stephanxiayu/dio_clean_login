import 'package:flutter_dio_clean_login/core/network/dio_client.dart';
import 'package:flutter_dio_clean_login/data/repository/auth.dart';
import 'package:flutter_dio_clean_login/data/source/auth_api_service.dart';
import 'package:flutter_dio_clean_login/domain/repostiory/auth.dart';
import 'package:flutter_dio_clean_login/domain/usecases/signup.dart';
import 'package:get_it/get_it.dart';

//4
final sl = GetIt.instance;

void steupServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());
//---------- start
//service
  sl.registerSingleton<AuthApiService>(AuthApiServiceImpl());

//repository
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

//usecases

  sl.registerSingleton<SignupUseCase>(SignupUseCase());
}
