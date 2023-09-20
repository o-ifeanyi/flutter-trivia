// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../gpt_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GptResponseModel _$GptResponseModelFromJson(Map<String, dynamic> json) =>
    GptResponseModel(
      id: json['id'] as String,
      object: json['object'] as String,
      created: json['created'] as int,
      model: json['model'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => ChoiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: UsageModel.fromJson(json['usage'] as Map<String, dynamic>),
    );
