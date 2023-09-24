import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/responses/login_response.dart';
import '../repositories/authentication_repository.dart';

class RefreshToken implements UseCase<void, NoParams> {
  final AuthenticationRepository repository;

  RefreshToken(this.repository);

  @override
  Future<Either<Failure, LoginResponse>> call(NoParams params) {
    return repository.refreshToken();
  }
}
