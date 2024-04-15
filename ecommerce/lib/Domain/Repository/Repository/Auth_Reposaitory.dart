import 'package:dartz/dartz.dart';
import 'package:ecommerce/Domain/Entity/AuthResultEntity.dart';
import 'package:ecommerce/Domain/Entity/Failures.dart';

abstract class AuthRepository{
  Future<Either<Failures,AuthResultEntity>>register(String name , String email,String password ,String rePassword, String phone );
}