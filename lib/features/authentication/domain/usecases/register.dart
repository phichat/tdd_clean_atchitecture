import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/requests/register_request.dart';
import '../repositories/authentication_repository.dart';

class Register implements UseCase<void, RegisterRequest> {
  final AuthenticationRepository repository;

  Register(this.repository);

  @override
  Future<Either<Failure, void>> call(RegisterRequest params) async {
    return await repository.register(params);
  }
}
