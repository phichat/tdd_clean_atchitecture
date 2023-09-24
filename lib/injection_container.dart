import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:tdd_clean_atchitecture/core/network/dio/dio_auth_interceptor.dart';

import 'core/platform/network_info.dart';
import 'core/util/input_converter.dart';
import 'features/authentication/injection_container.dart';
import 'features/number_trivia/number_trivia.dart';

final getIt = GetIt.instance;

Future<void> init({required GlobalKey<NavigatorState> navigatorKey}) async {
  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreferences);
  getIt.registerLazySingleton(() => http.Client());
  getIt.registerLazySingleton(() => InternetConnectionChecker());

  //! Core
  final dio = Dio();
  dio.interceptors.add(DioAuthInterceptor(
    dio: dio,
    navigatorKey: navigatorKey,
  ));

  getIt.registerLazySingleton<Dio>(() => dio);
  getIt.registerLazySingleton(() => InputConverter());
  getIt.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(getIt<InternetConnectionChecker>()),
  );

  //! Features - Number Trivia
  // Data sources
  getIt.registerLazySingleton<NumberTriviaRemoteDataSource>(
    () => NumberTriviaRemoteDataSourceImpl(client: getIt<http.Client>()),
  );

  getIt.registerLazySingleton<NumberTriviaLocalDataSource>(
    () => NumberTriviaLocalDataSourceImpl(
      sharedPreferences: getIt<SharedPreferences>(),
    ),
  );

  // Repository
  getIt.registerLazySingleton<NumberTriviaRepository>(
    () => NumberTriviaRepositoryImpl(
      localDataSource: getIt<NumberTriviaLocalDataSource>(),
      networkInfo: getIt<NetworkInfo>(),
      remoteDataSource: getIt<NumberTriviaRemoteDataSource>(),
    ),
  );

  //! Feature

  // Use cases
  getIt.registerLazySingleton(
    () => GetConcreateNumberTrivia(getIt<NumberTriviaRepository>()),
  );
  getIt.registerLazySingleton(
    () => GetRandomNumberTrivia(getIt<NumberTriviaRepository>()),
  );

  // Bloc
  getIt.registerFactory(
    () => NumberTriviaBloc(
      concrete: getIt<GetConcreateNumberTrivia>(),
      inputConverter: getIt<InputConverter>(),
      random: getIt<GetRandomNumberTrivia>(),
    ),
  );

  //! Features - Authentication
  AuthenticationInjectionContainer.dependency(navigatorKey: navigatorKey);
}
