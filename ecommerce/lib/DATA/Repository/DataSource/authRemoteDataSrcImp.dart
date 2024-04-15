import 'package:dartz/dartz.dart';
import 'package:ecommerce/DATA/APi/ApiManager.dart';
import 'package:ecommerce/Domain/Entity/AuthResultEntity.dart';
import 'package:ecommerce/Domain/Entity/Failures.dart';
import 'package:ecommerce/Domain/Repository/DataSource/AuthRemoteDataSource.dart';

class AuthREmoteDataSourceImp implements AuthRemoteDateSource{
  ApiManager apiManager;
  AuthREmoteDataSourceImp({required this.apiManager});
  @override
  Future<Either<Failures, AuthResultEntity>> register(String name, String email, String password,
      String rePassword, String phone)async {
     var either = await apiManager.register(name, email, password, rePassword, phone);
     return either.fold(
         (l){
           return Left(l);
         },
     (responce) {
           return Right(responce.toAuthResultEnitity());
     });
  }
  
}