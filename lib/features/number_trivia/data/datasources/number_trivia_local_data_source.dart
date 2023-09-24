import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/error/exceptions.dart';
import '../models/number_trivia_model.dart';

const CACHED_NUMBER_TRIVIA = 'CACHED_NUMBER_TRIVIA';

abstract class NumberTriviaLocalDataSource {
  /// Gets the cached [NumberTriviaModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws a [CacheException] for all error codes.
  Future<NumberTriviaModel> getLastNumberTrivia();

  /// Calls the http://numbersapi.com/{number} endpoint.
  ///
  /// Throws a [CacheException] for all error codes.
  Future<void> cacheNumberTrivia(NumberTriviaModel triviaToCache);
}

class NumberTriviaLocalDataSourceImpl implements NumberTriviaLocalDataSource {
  final SharedPreferences _sharedPreferences;

  NumberTriviaLocalDataSourceImpl(
      {required SharedPreferences sharedPreferences})
      : _sharedPreferences = sharedPreferences;

  @override
  Future<bool> cacheNumberTrivia(NumberTriviaModel triviaToCache) {
    return _sharedPreferences.setString(
      CACHED_NUMBER_TRIVIA,
      json.encode(triviaToCache.toJson()),
    );
  }

  @override
  Future<NumberTriviaModel> getLastNumberTrivia() {
    final jsonString = _sharedPreferences.getString(CACHED_NUMBER_TRIVIA);

    if (jsonString == null) throw CacheException();

    return Future.value(
      NumberTriviaModel.fromJson(json.decode(jsonString)),
    );
  }
}
