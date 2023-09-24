// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePasswordRequestModel _$ChangePasswordRequestModelFromJson(
        Map<String, dynamic> json) =>
    ChangePasswordRequestModel(
      accountId: json['accountId'] as String,
      confirmPassword: json['confirmPassword'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$ChangePasswordRequestModelToJson(
        ChangePasswordRequestModel instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'confirmPassword': instance.confirmPassword,
      'password': instance.password,
    };
