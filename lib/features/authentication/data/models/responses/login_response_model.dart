import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/responses/login_response.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel extends LoginResponse {
  LoginResponseModel({
    required super.accountId,
    required super.title,
    required super.firstName,
    required super.lastName,
    required super.email,
    required super.role,
    required super.isVerified,
    required super.jwtToken,
    required super.avatar,
    required super.refreshToken,
    super.created,
    super.updated,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}
