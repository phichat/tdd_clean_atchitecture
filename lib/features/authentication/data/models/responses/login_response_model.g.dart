// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    LoginResponseModel(
      accountId: json['accountId'] as String,
      title: json['title'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      isVerified: json['isVerified'] as bool,
      jwtToken: json['jwtToken'] as String,
      avatar: json['avatar'] as String,
      refreshToken: json['refreshToken'] as String,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'title': instance.title,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'role': instance.role,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'isVerified': instance.isVerified,
      'jwtToken': instance.jwtToken,
      'avatar': instance.avatar,
      'refreshToken': instance.refreshToken,
    };
