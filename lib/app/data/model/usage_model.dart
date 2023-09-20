import 'package:ai_trivia/core/constants/constants.dart';
import 'package:json_annotation/json_annotation.dart';

part 'generated/usage_model.g.dart';

@JsonSerializable(includeIfNull: false, createToJson: false)
class UsageModel {
  final int promptTokens;
  final int completionTokens;
  final int totalTokens;

  const UsageModel({
    required this.promptTokens,
    required this.completionTokens,
    required this.totalTokens,
  });

  factory UsageModel.fromJson(JsonObject json) => _$UsageModelFromJson(json);
}
