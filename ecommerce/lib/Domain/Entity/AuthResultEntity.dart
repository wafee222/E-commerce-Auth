import 'package:ecommerce/Domain/Entity/UserEntity.dart';

class AuthResultEntity {
  UserEntity? userEntity;
  String? token;

  AuthResultEntity({ this.userEntity, this.token});
}