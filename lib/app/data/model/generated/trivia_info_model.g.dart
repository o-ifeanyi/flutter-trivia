// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../trivia_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TriviaInfoModel _$$_TriviaInfoModelFromJson(Map<String, dynamic> json) =>
    _$_TriviaInfoModel(
      amount: json['amount'] as int,
      topic: json['topic'] as String,
      category: json['category'] as String,
      type: $enumDecode(_$TriviaTypeEnumMap, json['type']),
      difficulty: json['difficulty'] as String,
    );

Map<String, dynamic> _$$_TriviaInfoModelToJson(_$_TriviaInfoModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'topic': instance.topic,
      'category': instance.category,
      'type': _$TriviaTypeEnumMap[instance.type]!,
      'difficulty': instance.difficulty,
    };

const _$TriviaTypeEnumMap = {
  TriviaType.boolean: 'boolean',
  TriviaType.multipleChoice: 'multipleChoice',
};
