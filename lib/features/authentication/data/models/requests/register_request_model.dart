import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/requests/register_request.dart';

part 'register_request_model.g.dart';

@JsonSerializable()
class RegisterRequestModel extends RegisterRequest {
  RegisterRequestModel({
    required super.title,
    required super.firstName,
    required super.lastName,
    required super.email,
    required super.password,
    required super.confirmPassword,
    required super.acceptTerms,
  });

  factory RegisterRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestModelFromJson(json);

  factory RegisterRequestModel.fromEntity(RegisterRequest entity) =>
      RegisterRequestModel(
        title: entity.title,
        firstName: entity.firstName,
        lastName: entity.lastName,
        email: entity.email,
        password: entity.password,
        confirmPassword: entity.confirmPassword,
        acceptTerms: entity.acceptTerms,
      );

  Map<String, dynamic> toJson() => _$RegisterRequestModelToJson(this);
}
