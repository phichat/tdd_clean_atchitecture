import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:tdd_clean_atchitecture/core/error/failures.dart';
import 'package:tdd_clean_atchitecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_clean_atchitecture/features/number_trivia/domain/repositories/number_trivia_repository.dart';

import '../../../../core/usecases/usecase.dart';

class GetConcreateNumberTrivia implements UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreateNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  const Params({required this.number});

  @override
  List<Object?> get props => [number];
}
