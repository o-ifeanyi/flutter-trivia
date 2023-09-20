import 'package:ai_trivia/core/constants/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/trivia_info_model.freezed.dart';
part 'generated/trivia_info_model.g.dart';

enum TriviaType { boolean, multipleChoice }

@freezed
sealed class TriviaInfoModel with _$TriviaInfoModel {
  const factory TriviaInfoModel({
    required int amount,
    required String topic,
    required String category,
    required TriviaType type,
    required String difficulty,
  }) = _TriviaInfoModel;

  factory TriviaInfoModel.fromJson(JsonObject json) =>
      _$TriviaInfoModelFromJson(json);
}
