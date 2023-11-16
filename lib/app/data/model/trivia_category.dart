import 'package:ai_trivia/core/constants/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/trivia_category.g.dart';

@JsonSerializable()
class TriviaCategory {
  final int id;
  final String value;

  const TriviaCategory({required this.id, required this.value});

  @override
  String toString() => value;

  factory TriviaCategory.fromJson(JsonObject json) =>
      _$TriviaCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$TriviaCategoryToJson(this);
}
