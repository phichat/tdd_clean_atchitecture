import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../injection_container.dart';
import 'data/datasources/local/authentication_local_data_source.dart';
import 'data/datasources/remote/authentication_remote_data_source.dart';
import 'data/repositories/authentication_repository_impl.dart';
import 'domain/repositories/authentication_repository.dart';
import 'domain/usecases/change_password.dart';
import 'domain/usecases/forgot_password.dart';
import 'domain/usecases/get_token.dart';
import 'domain/usecases/login.dart';
import 'domain/usecases/logout.dart';
import 'domain/usecases/refresh_token.dart';
import 'domain/usecases/register.dart';
import 'presentation/bloc/signin/signin_bloc.dart';

class AuthenticationInjectionContainer {
  static dependency({required GlobalKey<NavigatorState> navigatorKey}) {
    /// Data source
    getIt.registerLazySingleton(
      () => AuthenticationLocalDataSource(getIt<SharedPreferences>()),
    );
    getIt.registerLazySingleton(
      () => AuthenticationRemoteDataSource(getIt<Dio>()),
    );

    /// Repositories
    getIt.registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(
        remoteDataSource: getIt<AuthenticationRemoteDataSource>(),
        localDataSource: getIt<AuthenticationLocalDataSource>(),
      ),
    );

    /// Use cases
    getIt.registerLazySingleton(
      () => ChangePassword(getIt<AuthenticationRepository>()),
    );
    getIt.registerLazySingleton(
      () => ForgotPassword(getIt<AuthenticationRepository>()),
    );
    getIt.registerLazySingleton(
        () => GetToken(getIt<AuthenticationRepository>()));
    getIt.registerLazySingleton(
      () => Login(getIt<AuthenticationRepository>()),
    );
    getIt.registerLazySingleton(
      () => Logout(
        repository: getIt<AuthenticationRepository>(),
        navigatorKey: navigatorKey,
      ),
    );
    getIt.registerLazySingleton(
      () => RefreshToken(getIt<AuthenticationRepository>()),
    );
    getIt.registerLazySingleton(
      () => Register(getIt<AuthenticationRepository>()),
    );

    /// Bloc
    getIt.registerFactory(() => SigninBloc(login: getIt<Login>()));
  }
}
