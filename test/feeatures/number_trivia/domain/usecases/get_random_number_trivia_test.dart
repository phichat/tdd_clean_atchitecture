import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_clean_atchitecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_clean_atchitecture/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:tdd_clean_atchitecture/features/number_trivia/domain/usecases/get_random_number_trivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  var mockNumberTriviaRepository = MockNumberTriviaRepository();
  var usecase = GetRandomNumberTrivia(mockNumberTriviaRepository);

  var tNumberTrivia = const NumberTrivia(text: 'test', number: 1);

  test('should get trivia from the repository', () async {
    // arrange
    when(mockNumberTriviaRepository.getRandomNumberTrivia())
        .thenAnswer((_) async => Right(tNumberTrivia));

    // act
    final result = await usecase(NoParams());

    // assert
    expect(result, Right(tNumberTrivia));
    verify(mockNumberTriviaRepository.getRandomNumberTrivia());
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
