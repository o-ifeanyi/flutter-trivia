// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../trivia_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TriviaQuestion _$$_TriviaQuestionFromJson(Map<String, dynamic> json) =>
    _$_TriviaQuestion(
      question: json['question'] as String,
      correctAnswer: json['correct_answer'] as String,
      incorrectAnswers: (json['incorrect_answers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      index: json['index'] as int?,
      zIndex: json['z_index'] as int?,
      direction: $enumDecodeNullable(_$DirectionEnumMap, json['direction']),
      selectedAnswer: json['selected_answer'] as String?,
    );

Map<String, dynamic> _$$_TriviaQuestionToJson(_$_TriviaQuestion instance) =>
    <String, dynamic>{
      'question': instance.question,
      'correct_answer': instance.correctAnswer,
      'incorrect_answers': instance.incorrectAnswers,
      'index': instance.index,
      'z_index': instance.zIndex,
      'direction': _$DirectionEnumMap[instance.direction],
      'selected_answer': instance.selectedAnswer,
    };

const _$DirectionEnumMap = {
  Direction.left: 'left',
  Direction.right: 'right',
};
