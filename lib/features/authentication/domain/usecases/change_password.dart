import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/requests/change_password_request.dart';
import '../repositories/authentication_repository.dart';

class ChangePassword implements UseCase<void, ChangePasswordRequest> {
  final AuthenticationRepository repository;

  ChangePassword(this.repository);

  @override
  Future<Either<Failure, void>> call(ChangePasswordRequest params) async {
    return await repository.changePassword(params);
  }
}
