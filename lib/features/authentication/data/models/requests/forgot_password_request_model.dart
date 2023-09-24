import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/entities.dart';

part 'forgot_password_request_model.g.dart';

@JsonSerializable()
class ForgotPasswordRequestModel extends ForgotPasswordRequest {
  const ForgotPasswordRequestModel(super.email);

  factory ForgotPasswordRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$ForgotPasswordRequestModelToJson(this);
}
