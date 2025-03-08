import 'package:dartz/dartz.dart';
import 'package:flutter_dio_clean_login/core/usecase/usecase.dart';
import 'package:flutter_dio_clean_login/data/models/signup_request_prams.dart';
import 'package:flutter_dio_clean_login/domain/repostiory/auth.dart';
import 'package:flutter_dio_clean_login/service_locator.dart';

class SignupUseCase implements UseCase<Either, SignupReqParams> {
  @override
  Future<Either> call({SignupReqParams? param}) async {
    return sl<AuthRepository>().signup(param!);
  }
}
