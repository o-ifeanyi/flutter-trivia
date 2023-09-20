import 'package:ai_trivia/app/data/model/choice_model.dart';
import 'package:ai_trivia/app/data/model/usage_model.dart';
import 'package:ai_trivia/core/constants/constants.dart';
import 'package:json_annotation/json_annotation.dart';

part 'generated/gpt_response_model.g.dart';

@JsonSerializable(includeIfNull: false, createToJson: false)
class GptResponseModel {
  final String id;
  final String object;
  final int created;
  final String model;
  final List<ChoiceModel> choices;
  final UsageModel usage;

  const GptResponseModel({
    required this.id,
    required this.object,
    required this.created,
    required this.model,
    required this.choices,
    required this.usage,
  });

  factory GptResponseModel.fromJson(JsonObject json) =>
      _$GptResponseModelFromJson(json);
}
