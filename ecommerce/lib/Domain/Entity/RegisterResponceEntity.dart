import 'UserEntity.dart';

/// message : "success"
/// user : {"name":"Ahmed Abd Al-Muti","email":"adham42326@gmail.com","role":"user"}
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2MWQ5ZjdmYmU4YjUyMzIzNWQxM2NmYiIsIm5hbWUiOiJBaG1lZCBBYmQgQWwtTXV0aSIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzEzMjE3NDA4LCJleHAiOjE3MjA5OTM0MDh9.4Q33PZ2Bd8Irl4LGJmGC4xCOWiyz3s3Bqi1B1yHPlL0"

class RegisterResponceEntity {
  RegisterResponceEntity({
      this.message, 
      this.user, 
      this.token,});

  String? message;
  UserEntity? user;
  String? token;


}