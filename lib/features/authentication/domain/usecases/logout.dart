import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/authentication_repository.dart';

class Logout implements UseCase<void, NoParams> {
  final AuthenticationRepository repository;
  final GlobalKey<NavigatorState> navigatorKey;

  Logout({required this.repository, required this.navigatorKey});

  @override
  Future<Either<Failure, bool>> call(NoParams params) async {
    var result = await repository.logout();
    return result.fold((l) {
      return Left(l);
    }, (r) {
      navigatorKey.currentState!.pushReplacementNamed('/login');
      return const Right(true);
    });
  }
}
