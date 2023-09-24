import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/error/failures.dart';
import '../../../../../core/util/input_converter.dart';
import '../../../domain/entities/number_trivia.dart';
import '../../../domain/usecases/get_concreate_number_trivia.dart';
import '../../../domain/usecases/get_random_number_trivia.dart';
import 'number_trivia_event.dart';
import 'number_trivia_state.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';
const String INVALID_INPUT_FAILURE_MESSAGE =
    'Invalid Input - The number must be a positive integer or zero.';

class NumberTriviaBloc extends Bloc<NumberTriviaEvent, NumberTriviaState> {
  final GetConcreateNumberTrivia getConcreteNumberTrivia;
  final GetRandomNumberTrivia getRandomNumberTrivia;
  final InputConverter inputConverter;

  NumberTriviaBloc({
    required GetConcreateNumberTrivia concrete,
    required GetRandomNumberTrivia random,
    required this.inputConverter,
  })  : getConcreteNumberTrivia = concrete,
        getRandomNumberTrivia = random,
        super(Empty()) {
    on<NumberTriviaEvent>(_mapEventToState);
  }

  _mapEventToState(
    NumberTriviaEvent event,
    Emitter emit,
  ) async {
    if (event is GetTriviaForConcreteNumber) {
      final inputEither =
          inputConverter.stringToUnsignedInteger(event.numberString);

      await inputEither.fold(
        (failure) {
          emit(Error(message: INVALID_INPUT_FAILURE_MESSAGE));
        },
        (integer) async {
          emit(Loading());

          final failureOrTrivia =
              await getConcreteNumberTrivia(Params(number: integer));

          emit(_eitherLoadedOrErrorState(failureOrTrivia));
        },
      );
    } else if (event is GetTriviaForRandomNumber) {
      emit(Loading());
      final failureOrTrivia = await getRandomNumberTrivia(NoParams());
      emit(_eitherLoadedOrErrorState(failureOrTrivia));
    }
  }

  NumberTriviaState _eitherLoadedOrErrorState(
    Either<Failure, NumberTrivia> failureOrTrivia,
  ) {
    return failureOrTrivia.fold(
      (failure) => Error(message: _mapFailureToMessage(failure)),
      (trivia) => Loaded(trivia: trivia),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHE_FAILURE_MESSAGE;
      default:
        return 'Unexpected error';
    }
  }
}
