import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:tdd_clean_atchitecture/core/error/exceptions.dart';
import 'package:tdd_clean_atchitecture/features/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:tdd_clean_atchitecture/features/number_trivia/data/models/number_trivia_model.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  late NumberTriviaRemoteDataSourceImpl dataSource;
  late MockHttpClient mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    dataSource = NumberTriviaRemoteDataSourceImpl(client: mockHttpClient);
  });

  void setUpMockHttpClientSuccess200() {
    when(mockHttpClient.get(Uri.parse('http://numbersapi.com'),
            headers: anyNamed('headers')))
        .thenAnswer(
      (_) async => http.Response(fixture('trivia.json'), 200),
    );
  }

  void setUpMockHttpClientFailure404() {
    when(mockHttpClient.get(Uri.parse('http://numbersapi.com'),
            headers: anyNamed('headers')))
        .thenAnswer(
      (_) async => http.Response('Something went wrong', 404),
    );
  }

  group('getConcreateNumberTrivia', () {
    const tNumber = 1;
    const tNumberTriviaModel =
        NumberTriviaModel(text: 'Test trivia', number: tNumber);

    test('''should perform a GET request on a URL with number 
        being the endpoint and with application/json header''', () async {
      // arrange
      when(mockHttpClient.get(Uri.parse('http://numbersapi.com/$tNumber'),
              headers: anyNamed('headers')))
          .thenAnswer(
        (_) async => http.Response(fixture('trivia.json'), 200),
      );
      // act
      final result = await dataSource.getConcreteNumberTrivia(tNumber);
      // assert
      expect(result, equals(tNumberTriviaModel));
    });

    test('should return NumberTrivia when the response code is 200 (success)',
        () async {
      // arrange
      setUpMockHttpClientSuccess200();
      // act
      final result = await dataSource.getConcreteNumberTrivia(tNumber);
      // assert
      expect(result, equals(tNumberTriviaModel));
    });

    test(
        'should throw a ServerException when the response code is 404 or other',
        () async {
      // arrange
      setUpMockHttpClientFailure404();
      // act
      final call = dataSource.getConcreteNumberTrivia;
      // assert
      expect(
          () => call(tNumber), throwsA(const TypeMatcher<ServerException>()));
    });
  });

  group('getRandomNumberTrivia', () {
    const tNumberTriviaModel =
        NumberTriviaModel(text: 'Test trivia', number: 123);

    test(
      'should perform a GET request on a URL with number being the endpoint and with application/json header',
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        dataSource.getRandomNumberTrivia();
        // assert
        verify(mockHttpClient.get(
          Uri.parse('http://numbersapi.com/random'),
          headers: {'Content-Type': 'application/json'},
        ));
      },
    );

    test(
      'should throw a ServerExceptoion when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = dataSource.getRandomNumberTrivia;
        // assert
        expect(
          () => call(),
          throwsA(const TypeMatcher<ServerException>()),
        );
      },
    );
  });
}
