//3

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dio_clean_login/core/constants/api_urls.dart';
import 'package:flutter_dio_clean_login/core/network/dio_client.dart';
import 'package:flutter_dio_clean_login/data/models/signup_request_prams.dart';
import 'package:flutter_dio_clean_login/service_locator.dart';

abstract class AuthApiService {
  Future<Either> signup(SignupReqParams signupReqParams);
}

class AuthApiServiceImpl extends AuthApiService {
  @override
  Future<Either> signup(SignupReqParams signupReqParams) async {
    try {
      var response = await sl<DioClient>()
          .post(ApiUrls.register, data: signupReqParams.toMap());
      return Right(response);
    } on DioException catch (e) {
      return Left(e.response!.data["message"]);
    }
  }
}
