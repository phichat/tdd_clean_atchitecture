import 'package:flutter_test/flutter_test.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_clean_atchitecture/core/platform/network_info.dart';

class MockDataConnectionChecker extends Mock
    implements InternetConnectionChecker {}

void main() {
  late MockDataConnectionChecker mockDataConnectionChecker;
  late NetworkInfoImpl networkInfo;

  setUp(() async {
    mockDataConnectionChecker = MockDataConnectionChecker();
    networkInfo = NetworkInfoImpl(mockDataConnectionChecker);
  });

  group('isConnected', () {
    test('should forward the call to InternetConnectionChecker.hasConnection',
        () async {
      // arrange
      var tHasConnectionFuture = Future.value(true);

      when(mockDataConnectionChecker.hasConnection)
          .thenAnswer((_) => tHasConnectionFuture);
      // act
      final result = networkInfo.isConnected;
      // assert
      verify(mockDataConnectionChecker.hasConnection);
      expect(result, tHasConnectionFuture);
    });
  });
}
