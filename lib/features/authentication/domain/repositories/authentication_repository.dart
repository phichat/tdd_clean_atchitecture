import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/entities.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, LoginResponse>> login(LoginRequest params);
  Future<Either<Failure, LoginResponse>> refreshToken();
  Future<Either<Failure, void>> logout();
  Future<Either<Failure, void>> forgotPassword(ForgotPasswordRequest params);
  Future<Either<Failure, void>> changePassword(ChangePasswordRequest params);
  Future<Either<Failure, void>> register(RegisterRequest params);
  Future<Either<Failure, String>> getToken();
}
