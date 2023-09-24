import 'package:json_annotation/json_annotation.dart';
import 'package:tdd_clean_atchitecture/features/authentication/domain/entities/entities.dart';

part 'change_password_request_model.g.dart';

@JsonSerializable()
class ChangePasswordRequestModel extends ChangePasswordRequest {
  const ChangePasswordRequestModel({
    required super.accountId,
    required super.confirmPassword,
    required super.password,
  });

  factory ChangePasswordRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChangePasswordRequestModelToJson(this);
}
