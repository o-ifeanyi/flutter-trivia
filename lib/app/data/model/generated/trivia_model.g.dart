// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../trivia_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TriviaModel _$$_TriviaModelFromJson(Map<String, dynamic> json) =>
    _$_TriviaModel(
      questions: (json['questions'] as List<dynamic>)
          .map((e) => TriviaQuestion.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      triviaInfo: json['trivia_info'] == null
          ? null
          : TriviaInfoModel.fromJson(
              json['trivia_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TriviaModelToJson(_$_TriviaModel instance) =>
    <String, dynamic>{
      'questions': instance.questions.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt?.toIso8601String(),
      'trivia_info': instance.triviaInfo?.toJson(),
    };
