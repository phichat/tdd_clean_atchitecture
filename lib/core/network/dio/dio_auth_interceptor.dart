import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../features/authentication/domain/entities/entities.dart';
import '../../../features/authentication/domain/usecases/get_token.dart';
import '../../../features/authentication/domain/usecases/logout.dart';
import '../../../features/authentication/domain/usecases/refresh_token.dart';
import '../../../injection_container.dart';
import '../../error/failures.dart';
import '../../usecases/usecase.dart';

class DioAuthInterceptor extends Interceptor {
//  static const _exceptions = [Routes.SIGN_IN, Routes.SIGN_UP];
  final Dio dio;
  final GlobalKey<NavigatorState> navigatorKey;

  DioAuthInterceptor({required this.dio, required this.navigatorKey});

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      // If a 401 response is received, refresh the access token
      var refreshToken = await getIt<RefreshToken>()(NoParams());

      right(LoginResponse r) async {
        err.requestOptions.headers['Authorization'] = 'Bearer ${r.jwtToken}';

        // dio.interceptors.addAll(getIt<Dio>().interceptors);
        final cloneReq = await dio.request(
          err.requestOptions.path,
          options: Options(
            method: err.requestOptions.method,
            headers: err.requestOptions.headers,
          ),
          data: err.requestOptions.data,
          queryParameters: err.requestOptions.queryParameters,
        );

        return handler.resolve(cloneReq);
      }

      left(Failure l) async {
        await getIt<Logout>()(NoParams());
      }

      refreshToken.fold(left, right);
    }
    super.onError(err, handler);
  }

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // if (!_exceptions.any(options.path.startsWith)) {
    final getToken = await getIt<GetToken>()(NoParams());
    var token = '';
    getToken.foldRight(token, (r, previous) => r);
    options.headers['Authorization'] = 'Bearer $token';
    // }

    return super.onRequest(options, handler);
  }
}
