import 'package:ai_trivia/core/constants/constants.dart';
import 'package:json_annotation/json_annotation.dart';

part 'generated/choice_model.g.dart';

@JsonSerializable(includeIfNull: false, createToJson: false)
class ChoiceModel {
  final String text;
  final int index;
  final String finishReason;

  const ChoiceModel({
    required this.text,
    required this.index,
    required this.finishReason,
  });

  factory ChoiceModel.fromJson(JsonObject json) => _$ChoiceModelFromJson(json);
}
