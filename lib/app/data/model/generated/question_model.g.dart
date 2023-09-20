// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionModel _$$_QuestionModelFromJson(Map<String, dynamic> json) =>
    _$_QuestionModel(
      text: json['text'] as String,
      answer: json['answer'] as String,
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
      selectedAnswer: json['selected_answer'] as String?,
    );

Map<String, dynamic> _$$_QuestionModelToJson(_$_QuestionModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'answer': instance.answer,
      'options': instance.options,
      'selected_answer': instance.selectedAnswer,
    };
