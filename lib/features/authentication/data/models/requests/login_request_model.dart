import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/requests/login_request.dart';

part 'login_request_model.g.dart';

@JsonSerializable()
class LoginRequestModel extends LoginRequest {
  const LoginRequestModel({
    required String email,
    required String password,
    bool isPersistent = true,
  }) : super(
          email: email,
          password: password,
          isPersistent: isPersistent,
        );

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestModelFromJson(json);

  factory LoginRequestModel.fromEntity(LoginRequest entity) =>
      LoginRequestModel(
        email: entity.email,
        password: entity.password,
        isPersistent: entity.isPersistent,
      );

  Map<String, dynamic> toJson() => _$LoginRequestModelToJson(this);
}

class Animal {}

class Dog extends Animal {}

class Cat extends Animal {}
