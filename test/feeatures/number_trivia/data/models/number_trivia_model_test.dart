import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_clean_atchitecture/features/number_trivia/data/models/number_trivia_model.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tNumberTriviaModel = NumberTriviaModel(text: 'Test Text', number: 1);

  test('should be a subclass of NumberTrivia entity', () async {
    // arrange
    final Map<String, dynamic> jsonMap = json.decode(fixture('trivia.json'));
    // act
    final result = NumberTriviaModel.fromJson(jsonMap);
    // assert
    expect(result, tNumberTriviaModel);
  });
}
