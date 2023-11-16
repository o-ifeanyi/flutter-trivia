import 'package:ai_trivia/core/constants/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/trivia_type.g.dart';

@JsonSerializable(createToJson: true)
class TriviaType {
  final String id;
  final String value;

  const TriviaType({required this.id, required this.value});

  @override
  String toString() => value;

  factory TriviaType.fromJson(JsonObject json) => _$TriviaTypeFromJson(json);

  Map<String, dynamic> toJson() => _$TriviaTypeToJson(this);
}
