import 'package:ai_trivia/app/data/model/trivia_category.dart';
import 'package:ai_trivia/app/data/model/trivia_type.dart';
import 'package:ai_trivia/core/constants/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/trivia_info_model.freezed.dart';
part 'generated/trivia_info_model.g.dart';

@freezed
sealed class TriviaInfoModel with _$TriviaInfoModel {
  const factory TriviaInfoModel({
    String? amount,
    TriviaCategory? category,
    TriviaType? type,
    String? difficulty,
  }) = _TriviaInfoModel;

  factory TriviaInfoModel.fromJson(JsonObject json) =>
      _$TriviaInfoModelFromJson(json);
}
