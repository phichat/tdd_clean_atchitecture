// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequestModel _$RegisterRequestModelFromJson(
        Map<String, dynamic> json) =>
    RegisterRequestModel(
      title: json['title'] as String? ?? '',
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      confirmPassword: json['confirmPassword'] as String,
      acceptTerms: json['acceptTerms'] as String,
    );

Map<String, dynamic> _$RegisterRequestModelToJson(
        RegisterRequestModel instance) =>
    <String, dynamic>{
      'confirmPassword': instance.confirmPassword,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'password': instance.password,
      'title': instance.title,
      'acceptTerms': instance.acceptTerms,
    };
