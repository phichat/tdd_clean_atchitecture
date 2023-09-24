import 'package:tdd_clean_atchitecture/core/error/failures.dart';

import 'package:dartz/dartz.dart';

import '../../../../core/usecases/usecase.dart';
import '../entities/requests/login_request.dart';
import '../entities/responses/login_response.dart';
import '../repositories/authentication_repository.dart';

class Login implements UseCase<LoginResponse, LoginRequest> {
  final AuthenticationRepository repository;

  Login(this.repository);

  @override
  Future<Either<Failure, LoginResponse>> call(LoginRequest params) async {
    return await repository.login(params);
  }
}
