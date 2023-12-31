// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../trivia_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TriviaInfoModel _$TriviaInfoModelFromJson(Map<String, dynamic> json) {
  return _TriviaInfoModel.fromJson(json);
}

/// @nodoc
mixin _$TriviaInfoModel {
  String? get amount => throw _privateConstructorUsedError;
  TriviaCategory? get category => throw _privateConstructorUsedError;
  TriviaType? get type => throw _privateConstructorUsedError;
  String? get difficulty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TriviaInfoModelCopyWith<TriviaInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TriviaInfoModelCopyWith<$Res> {
  factory $TriviaInfoModelCopyWith(
          TriviaInfoModel value, $Res Function(TriviaInfoModel) then) =
      _$TriviaInfoModelCopyWithImpl<$Res, TriviaInfoModel>;
  @useResult
  $Res call(
      {String? amount,
      TriviaCategory? category,
      TriviaType? type,
      String? difficulty});
}

/// @nodoc
class _$TriviaInfoModelCopyWithImpl<$Res, $Val extends TriviaInfoModel>
    implements $TriviaInfoModelCopyWith<$Res> {
  _$TriviaInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? category = freezed,
    Object? type = freezed,
    Object? difficulty = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TriviaCategory?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TriviaType?,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TriviaInfoModelCopyWith<$Res>
    implements $TriviaInfoModelCopyWith<$Res> {
  factory _$$_TriviaInfoModelCopyWith(
          _$_TriviaInfoModel value, $Res Function(_$_TriviaInfoModel) then) =
      __$$_TriviaInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? amount,
      TriviaCategory? category,
      TriviaType? type,
      String? difficulty});
}

/// @nodoc
class __$$_TriviaInfoModelCopyWithImpl<$Res>
    extends _$TriviaInfoModelCopyWithImpl<$Res, _$_TriviaInfoModel>
    implements _$$_TriviaInfoModelCopyWith<$Res> {
  __$$_TriviaInfoModelCopyWithImpl(
      _$_TriviaInfoModel _value, $Res Function(_$_TriviaInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? category = freezed,
    Object? type = freezed,
    Object? difficulty = freezed,
  }) {
    return _then(_$_TriviaInfoModel(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TriviaCategory?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TriviaType?,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TriviaInfoModel implements _TriviaInfoModel {
  const _$_TriviaInfoModel(
      {this.amount, this.category, this.type, this.difficulty});

  factory _$_TriviaInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_TriviaInfoModelFromJson(json);

  @override
  final String? amount;
  @override
  final TriviaCategory? category;
  @override
  final TriviaType? type;
  @override
  final String? difficulty;

  @override
  String toString() {
    return 'TriviaInfoModel(amount: $amount, category: $category, type: $type, difficulty: $difficulty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TriviaInfoModel &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, category, type, difficulty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TriviaInfoModelCopyWith<_$_TriviaInfoModel> get copyWith =>
      __$$_TriviaInfoModelCopyWithImpl<_$_TriviaInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TriviaInfoModelToJson(
      this,
    );
  }
}

abstract class _TriviaInfoModel implements TriviaInfoModel {
  const factory _TriviaInfoModel(
      {final String? amount,
      final TriviaCategory? category,
      final TriviaType? type,
      final String? difficulty}) = _$_TriviaInfoModel;

  factory _TriviaInfoModel.fromJson(Map<String, dynamic> json) =
      _$_TriviaInfoModel.fromJson;

  @override
  String? get amount;
  @override
  TriviaCategory? get category;
  @override
  TriviaType? get type;
  @override
  String? get difficulty;
  @override
  @JsonKey(ignore: true)
  _$$_TriviaInfoModelCopyWith<_$_TriviaInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
