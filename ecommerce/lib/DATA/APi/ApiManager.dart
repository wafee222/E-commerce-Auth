import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/DATA/APi/ApiConstants.dart';
import 'package:ecommerce/DATA/Model/REquest/RegisterRequest.dart';
import 'package:ecommerce/DATA/Model/Responce/RegisterResponceDTO.dart';
import 'package:ecommerce/Domain/Entity/Failures.dart';
import 'package:http/http.dart' as http;

class ApiManager{
  ApiManager._();
  static ApiManager? _instance ;

  static ApiManager getInstance(){
    _instance??= ApiManager._();
    return _instance!;
  }

Future<Either<Failures,RegisterResponceDto>> register(String name , String email,
    String password ,String rePassword, String phone)async{
  var connectivityResult = await Connectivity().checkConnectivity();// User defined class
  if (connectivityResult == ConnectivityResult.mobile ||
      connectivityResult == ConnectivityResult.wifi) {
  Uri url = Uri.https(ApiConstats.BasrUrl,ApiEndPoint.RegisterApi);
  var registerRequest = RegisterRequest(
    name: name ,
    email: email,
    password: password,
    phone: phone,
    rePassword: rePassword
  );
    var responce = await  http.post(url,body:registerRequest );
    var registerResponce = RegisterResponceDto.fromJson(
        jsonDecode(responce.body));
    if(responce.statusCode >= 200 && responce.statusCode <300){
      return right(registerResponce);
    }else{
      return left(ServerError(errorMessage: registerResponce.error!= null?
      registerResponce.error!.msg! :  registerResponce.message));
    }
}else{
    return left(NeworkError(errorMessage: 'please check connection'));
  }
  }
}