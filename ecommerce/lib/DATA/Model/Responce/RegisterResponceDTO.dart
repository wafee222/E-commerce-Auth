import 'package:ecommerce/DATA/Model/Responce/Error.dart';
import 'package:ecommerce/Domain/Entity/AuthResultEntity.dart';

import 'UserDto.dart';

/// message : "success"
/// user : {"name":"Ahmed Abd Al-Muti","email":"adham42326@gmail.com","role":"user"}
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2MWQ5ZjdmYmU4YjUyMzIzNWQxM2NmYiIsIm5hbWUiOiJBaG1lZCBBYmQgQWwtTXV0aSIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzEzMjE3NDA4LCJleHAiOjE3MjA5OTM0MDh9.4Q33PZ2Bd8Irl4LGJmGC4xCOWiyz3s3Bqi1B1yHPlL0"

class RegisterResponceDto {
  RegisterResponceDto({
      this.message, 
      this.user, 
      this.token,
  this.error});

  RegisterResponceDto.fromJson(dynamic json) {
    message = json['message'];
    statusMsg = json['statusMsg'];
    user = json['user'] != null ? UserDto.fromJson(json['user']) : null;
    error = json['errors'] != null ? Errorr.fromJson(json['errors']) : null;
    token = json['token'];
  }
  String? message;
  UserDto? user;
  String? token;
  String? statusMsg;
  Errorr? error;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['statusMsg'] = statusMsg;

    if (user != null) {
      map['user'] = user?.toJson();
    }if (error != null) {
      map['errors'] = error?.toJson();
    }
    map['token'] = token;
    return map;
  }
AuthResultEntity toAuthResultEnitity(){
    return AuthResultEntity(
      token: token,
      userEntity: user?.toUserEntity()
    );
}
}