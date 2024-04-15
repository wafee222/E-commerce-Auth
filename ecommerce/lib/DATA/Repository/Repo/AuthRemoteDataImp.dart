import 'package:dartz/dartz.dart';

import 'package:ecommerce/Domain/Entity/AuthResultEntity.dart';

import 'package:ecommerce/Domain/Entity/Failures.dart';
import 'package:ecommerce/Domain/Repository/DataSource/AuthRemoteDataSource.dart';

import '../../../Domain/Repository/Repository/Auth_Reposaitory.dart';

class AuthRepositoryImp implements AuthRepository{
  AuthRemoteDateSource remoteDateSource;
  AuthRepositoryImp({required this.remoteDateSource});

  @override
  Future<Either<Failures, AuthResultEntity>> register(String name, String email, String password, String rePassword, String phone) {
return remoteDateSource.register(name, email, password, rePassword, phone);


  }
}