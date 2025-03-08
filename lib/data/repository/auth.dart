//2
import 'package:dartz/dartz.dart';
import 'package:flutter_dio_clean_login/data/models/signup_request_prams.dart';
import 'package:flutter_dio_clean_login/data/source/auth_api_service.dart';
import 'package:flutter_dio_clean_login/domain/repostiory/auth.dart';
import 'package:flutter_dio_clean_login/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signup(SignupReqParams signupReqParams) {
    return sl<AuthApiService>().signup(signupReqParams);
  }
}
