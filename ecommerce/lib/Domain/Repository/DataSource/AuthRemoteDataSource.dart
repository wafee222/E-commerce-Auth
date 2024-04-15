import 'package:dartz/dartz.dart';

import '../../Entity/AuthResultEntity.dart';
import '../../Entity/Failures.dart';

abstract class AuthRemoteDateSource  {
  Future<Either<Failures,AuthResultEntity>>register(String name , String email,String password ,String rePassword, String phone );

}