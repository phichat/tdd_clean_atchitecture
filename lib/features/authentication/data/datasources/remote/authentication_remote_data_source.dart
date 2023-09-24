import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/util/api_consts.dart';
import '../../models/models.dart';

part 'authentication_remote_data_source.g.dart';

@RestApi(baseUrl: '${ApiConsts.baseUrl}/accounts')
abstract class AuthenticationRemoteDataSource {
  factory AuthenticationRemoteDataSource(Dio dio, {String baseUrl}) =
      _AuthenticationRemoteDataSource;

  @POST('/forgot-password')
  Future<void> forgotPassword(@Body() ForgotPasswordRequestModel param);

  @POST('/change-password')
  Future<void> changePassword(@Body() ChangePasswordRequestModel param);

  @POST('/authenticate')
  Future<LoginResponseModel> login(@Body() LoginRequestModel param);

  @POST('/refresh-token')
  Future<LoginResponseModel> refreshToken();

  @POST('/register')
  Future<void> register(@Body() RegisterRequestModel param);
}
