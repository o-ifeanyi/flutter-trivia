import 'package:ai_trivia/core/constants/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/question_model.freezed.dart';
part 'generated/question_model.g.dart';

@freezed
class QuestionModel with _$QuestionModel {
  const factory QuestionModel({
    required String text,
    required String answer,
    required List<String> options,
    String? selectedAnswer,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(JsonObject json) =>
      _$QuestionModelFromJson(json);
}
