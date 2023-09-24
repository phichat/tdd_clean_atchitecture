import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/requests/forgot_password_request.dart';
import '../repositories/authentication_repository.dart';

class ForgotPassword implements UseCase<void, ForgotPasswordRequest> {
  final AuthenticationRepository repository;

  ForgotPassword(this.repository);

  @override
  Future<Either<Failure, void>> call(ForgotPasswordRequest params) async {
    return await repository.forgotPassword(params);
  }
}
