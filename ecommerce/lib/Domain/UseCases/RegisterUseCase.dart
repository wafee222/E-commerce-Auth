import 'package:dartz/dartz.dart';
import 'package:ecommerce/Domain/Repository/Repository/Auth_Reposaitory.dart';

import '../Entity/AuthResultEntity.dart';
import '../Entity/Failures.dart';

class RegisterUseCase{
AuthRepository authRepository;
RegisterUseCase({required this.authRepository});

Future<Either<Failures,AuthResultEntity>>  invoke(String name , String email,
    String password ,String rePassword, String phone ){
  return authRepository.register(name, email, password, rePassword, phone);
}

}