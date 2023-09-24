import 'package:tdd_clean_atchitecture/core/error/failures.dart';

import 'package:dartz/dartz.dart';

import '../../domain/entities/entities.dart';
import '../../domain/repositories/authentication_repository.dart';
import '../datasources/local/authentication_local_data_source.dart';
import '../datasources/remote/authentication_remote_data_source.dart';
import '../models/models.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationRemoteDataSource remoteDataSource;
  final AuthenticationLocalDataSource localDataSource;

  AuthenticationRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, void>> changePassword(ChangePasswordRequest params) {
    // TODO: implement changePassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> forgotPassword(ForgotPasswordRequest params) {
    // TODO: implement forgotPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, LoginResponse>> login(LoginRequest params) async {
    try {
      // Animal ani = Animal();
      // Dog dog1 = Dog();

      // Animal dog = Dog();
      // Animal cat = Cat();

      // dog = cat;

      final remote =
          await remoteDataSource.login(LoginRequestModel.fromEntity(params));
      await localDataSource.cacheToken(remote.jwtToken);
      return Right(remote);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      return Right(await localDataSource.deleteToken());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, LoginResponse>> refreshToken() async {
    try {
      final remote = await remoteDataSource.refreshToken();
      await localDataSource.cacheToken(remote.jwtToken);
      return Right(remote);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> register(RegisterRequest params) async {
    try {
      final remote = await remoteDataSource
          .register(RegisterRequestModel.fromEntity(params));
      return Right(remote);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> getToken() {
    final token = localDataSource.getToken();
    return Future.value(
      token.isEmpty
          ? const Left(CacheFailure('Please login first'))
          : Right(localDataSource.getToken()),
    );
  }
}
