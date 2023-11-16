import 'package:ai_trivia/core/constants/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/trivia_question_model.freezed.dart';
part 'generated/trivia_question_model.g.dart';

enum Direction { left, right }

@freezed
class TriviaQuestion with _$TriviaQuestion {
  const TriviaQuestion._();

  const factory TriviaQuestion({
    required String question,
    required String correctAnswer,
    required List<String> incorrectAnswers,
    int? index,
    int? zIndex,
    Direction? direction,
    String? selectedAnswer,
  }) = _TriviaQuestion;

  factory TriviaQuestion.fromJson(JsonObject json) =>
      _$TriviaQuestionFromJson(json);

  List<String> get options => List<String>.from(incorrectAnswers)
    ..add(correctAnswer)
    ..shuffle();
}
