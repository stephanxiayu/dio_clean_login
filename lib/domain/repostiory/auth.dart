// 1

import 'package:dartz/dartz.dart';
import 'package:flutter_dio_clean_login/data/models/signup_request_prams.dart';

abstract class AuthRepository {
  Future<Either> signup(SignupReqParams signupReqParams);
}
