// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../trivia_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TriviaInfoModel _$$_TriviaInfoModelFromJson(Map<String, dynamic> json) =>
    _$_TriviaInfoModel(
      amount: json['amount'] as String?,
      category: json['category'] == null
          ? null
          : TriviaCategory.fromJson(json['category'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : TriviaType.fromJson(json['type'] as Map<String, dynamic>),
      difficulty: json['difficulty'] as String?,
    );

Map<String, dynamic> _$$_TriviaInfoModelToJson(_$_TriviaInfoModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'category': instance.category?.toJson(),
      'type': instance.type?.toJson(),
      'difficulty': instance.difficulty,
    };
