import 'package:ecommerce/DATA/Repository/DataSource/authRemoteDataSrcImp.dart';
import 'package:ecommerce/DATA/Repository/Repo/AuthRemoteDataImp.dart';
import 'package:ecommerce/Domain/Repository/DataSource/AuthRemoteDataSource.dart';
import 'package:ecommerce/Domain/Repository/Repository/Auth_Reposaitory.dart';
import 'package:ecommerce/Domain/UseCases/RegisterUseCase.dart';

import '../DATA/APi/ApiManager.dart';

RegisterUseCase injectRegisterUseCase(){
  return RegisterUseCase(authRepository: injectAuthRepository());

}
AuthRepository injectAuthRepository(){
  return AuthRepositoryImp(remoteDateSource: injectAuthRemoteDataSource());
}
AuthRemoteDateSource injectAuthRemoteDataSource(){
  return AuthREmoteDataSourceImp(apiManager: ApiManager.getInstance());
}