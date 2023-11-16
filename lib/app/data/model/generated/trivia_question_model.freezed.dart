// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../trivia_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TriviaQuestion _$TriviaQuestionFromJson(Map<String, dynamic> json) {
  return _TriviaQuestion.fromJson(json);
}

/// @nodoc
mixin _$TriviaQuestion {
  String get question => throw _privateConstructorUsedError;
  String get correctAnswer => throw _privateConstructorUsedError;
  List<String> get incorrectAnswers => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  int? get zIndex => throw _privateConstructorUsedError;
  Direction? get direction => throw _privateConstructorUsedError;
  String? get selectedAnswer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TriviaQuestionCopyWith<TriviaQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TriviaQuestionCopyWith<$Res> {
  factory $TriviaQuestionCopyWith(
          TriviaQuestion value, $Res Function(TriviaQuestion) then) =
      _$TriviaQuestionCopyWithImpl<$Res, TriviaQuestion>;
  @useResult
  $Res call(
      {String question,
      String correctAnswer,
      List<String> incorrectAnswers,
      int? index,
      int? zIndex,
      Direction? direction,
      String? selectedAnswer});
}

/// @nodoc
class _$TriviaQuestionCopyWithImpl<$Res, $Val extends TriviaQuestion>
    implements $TriviaQuestionCopyWith<$Res> {
  _$TriviaQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? correctAnswer = null,
    Object? incorrectAnswers = null,
    Object? index = freezed,
    Object? zIndex = freezed,
    Object? direction = freezed,
    Object? selectedAnswer = freezed,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      incorrectAnswers: null == incorrectAnswers
          ? _value.incorrectAnswers
          : incorrectAnswers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      zIndex: freezed == zIndex
          ? _value.zIndex
          : zIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Direction?,
      selectedAnswer: freezed == selectedAnswer
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TriviaQuestionCopyWith<$Res>
    implements $TriviaQuestionCopyWith<$Res> {
  factory _$$_TriviaQuestionCopyWith(
          _$_TriviaQuestion value, $Res Function(_$_TriviaQuestion) then) =
      __$$_TriviaQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String question,
      String correctAnswer,
      List<String> incorrectAnswers,
      int? index,
      int? zIndex,
      Direction? direction,
      String? selectedAnswer});
}

/// @nodoc
class __$$_TriviaQuestionCopyWithImpl<$Res>
    extends _$TriviaQuestionCopyWithImpl<$Res, _$_TriviaQuestion>
    implements _$$_TriviaQuestionCopyWith<$Res> {
  __$$_TriviaQuestionCopyWithImpl(
      _$_TriviaQuestion _value, $Res Function(_$_TriviaQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? correctAnswer = null,
    Object? incorrectAnswers = null,
    Object? index = freezed,
    Object? zIndex = freezed,
    Object? direction = freezed,
    Object? selectedAnswer = freezed,
  }) {
    return _then(_$_TriviaQuestion(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      incorrectAnswers: null == incorrectAnswers
          ? _value._incorrectAnswers
          : incorrectAnswers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      zIndex: freezed == zIndex
          ? _value.zIndex
          : zIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Direction?,
      selectedAnswer: freezed == selectedAnswer
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TriviaQuestion extends _TriviaQuestion {
  const _$_TriviaQuestion(
      {required this.question,
      required this.correctAnswer,
      required final List<String> incorrectAnswers,
      this.index,
      this.zIndex,
      this.direction,
      this.selectedAnswer})
      : _incorrectAnswers = incorrectAnswers,
        super._();

  factory _$_TriviaQuestion.fromJson(Map<String, dynamic> json) =>
      _$$_TriviaQuestionFromJson(json);

  @override
  final String question;
  @override
  final String correctAnswer;
  final List<String> _incorrectAnswers;
  @override
  List<String> get incorrectAnswers {
    if (_incorrectAnswers is EqualUnmodifiableListView)
      return _incorrectAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incorrectAnswers);
  }

  @override
  final int? index;
  @override
  final int? zIndex;
  @override
  final Direction? direction;
  @override
  final String? selectedAnswer;

  @override
  String toString() {
    return 'TriviaQuestion(question: $question, correctAnswer: $correctAnswer, incorrectAnswers: $incorrectAnswers, index: $index, zIndex: $zIndex, direction: $direction, selectedAnswer: $selectedAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TriviaQuestion &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            const DeepCollectionEquality()
                .equals(other._incorrectAnswers, _incorrectAnswers) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.zIndex, zIndex) || other.zIndex == zIndex) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.selectedAnswer, selectedAnswer) ||
                other.selectedAnswer == selectedAnswer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      question,
      correctAnswer,
      const DeepCollectionEquality().hash(_incorrectAnswers),
      index,
      zIndex,
      direction,
      selectedAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TriviaQuestionCopyWith<_$_TriviaQuestion> get copyWith =>
      __$$_TriviaQuestionCopyWithImpl<_$_TriviaQuestion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TriviaQuestionToJson(
      this,
    );
  }
}

abstract class _TriviaQuestion extends TriviaQuestion {
  const factory _TriviaQuestion(
      {required final String question,
      required final String correctAnswer,
      required final List<String> incorrectAnswers,
      final int? index,
      final int? zIndex,
      final Direction? direction,
      final String? selectedAnswer}) = _$_TriviaQuestion;
  const _TriviaQuestion._() : super._();

  factory _TriviaQuestion.fromJson(Map<String, dynamic> json) =
      _$_TriviaQuestion.fromJson;

  @override
  String get question;
  @override
  String get correctAnswer;
  @override
  List<String> get incorrectAnswers;
  @override
  int? get index;
  @override
  int? get zIndex;
  @override
  Direction? get direction;
  @override
  String? get selectedAnswer;
  @override
  @JsonKey(ignore: true)
  _$$_TriviaQuestionCopyWith<_$_TriviaQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}
