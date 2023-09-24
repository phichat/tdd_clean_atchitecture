import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_clean_atchitecture/core/platform/network_info.dart';
import 'package:tdd_clean_atchitecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_clean_atchitecture/features/number_trivia/number_trivia.dart';
import 'package:tdd_clean_atchitecture/injection_container.dart' as di;

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  late MockNumberTriviaRepository mockNumberTriviaRepository;
  late GetConcreateNumberTrivia usecase;

  setUpAll(() {
    // di.getIt.registerLazySingleton<NumberTriviaRepository>(
    //     () => NumberTriviaRepositoryImpl(
    //           localDataSource: di.getIt<NumberTriviaLocalDataSource>(),
    //           networkInfo: di.getIt<NetworkInfo>(),
    //           remoteDataSource: di.getIt<NumberTriviaRemoteDataSource>(),
    //         ));

    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreateNumberTrivia(mockNumberTriviaRepository);
  });

  const tNumber = 1;
  const tNumberTrivia = NumberTrivia(text: 'test', number: tNumber);

  test(
    'should get trivia for the number from the repository',
    () async {
      // arrange
      // when(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber))
      //     .thenAnswer((_) async => const Right(tNumberTrivia));
      // act
      final result = await usecase(const Params(number: tNumber));
      // assert
      expect(result, const Right(tNumberTrivia));
      // verify(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber));
      // verifyNoMoreInteractions(mockNumberTriviaRepository);
    },
  );
}
