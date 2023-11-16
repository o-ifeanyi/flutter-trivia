import 'package:ai_trivia/app/data/model/trivia_question_model.dart';
import 'package:ai_trivia/app/data/model/trivia_info_model.dart';
import 'package:ai_trivia/core/constants/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/trivia_model.freezed.dart';
part 'generated/trivia_model.g.dart';

@freezed
class TriviaModel with _$TriviaModel {
  const factory TriviaModel({
    required List<TriviaQuestion> questions,
    DateTime? createdAt,
    TriviaInfoModel? triviaInfo,
  }) = _TriviaModel;

  factory TriviaModel.fromJson(JsonObject json) => _$TriviaModelFromJson(json);
}
