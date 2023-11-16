// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../trivia_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TriviaModel _$TriviaModelFromJson(Map<String, dynamic> json) {
  return _TriviaModel.fromJson(json);
}

/// @nodoc
mixin _$TriviaModel {
  List<TriviaQuestion> get questions => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  TriviaInfoModel? get triviaInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TriviaModelCopyWith<TriviaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TriviaModelCopyWith<$Res> {
  factory $TriviaModelCopyWith(
          TriviaModel value, $Res Function(TriviaModel) then) =
      _$TriviaModelCopyWithImpl<$Res, TriviaModel>;
  @useResult
  $Res call(
      {List<TriviaQuestion> questions,
      DateTime? createdAt,
      TriviaInfoModel? triviaInfo});

  $TriviaInfoModelCopyWith<$Res>? get triviaInfo;
}

/// @nodoc
class _$TriviaModelCopyWithImpl<$Res, $Val extends TriviaModel>
    implements $TriviaModelCopyWith<$Res> {
  _$TriviaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? createdAt = freezed,
    Object? triviaInfo = freezed,
  }) {
    return _then(_value.copyWith(
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<TriviaQuestion>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      triviaInfo: freezed == triviaInfo
          ? _value.triviaInfo
          : triviaInfo // ignore: cast_nullable_to_non_nullable
              as TriviaInfoModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TriviaInfoModelCopyWith<$Res>? get triviaInfo {
    if (_value.triviaInfo == null) {
      return null;
    }

    return $TriviaInfoModelCopyWith<$Res>(_value.triviaInfo!, (value) {
      return _then(_value.copyWith(triviaInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TriviaModelCopyWith<$Res>
    implements $TriviaModelCopyWith<$Res> {
  factory _$$_TriviaModelCopyWith(
          _$_TriviaModel value, $Res Function(_$_TriviaModel) then) =
      __$$_TriviaModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TriviaQuestion> questions,
      DateTime? createdAt,
      TriviaInfoModel? triviaInfo});

  @override
  $TriviaInfoModelCopyWith<$Res>? get triviaInfo;
}

/// @nodoc
class __$$_TriviaModelCopyWithImpl<$Res>
    extends _$TriviaModelCopyWithImpl<$Res, _$_TriviaModel>
    implements _$$_TriviaModelCopyWith<$Res> {
  __$$_TriviaModelCopyWithImpl(
      _$_TriviaModel _value, $Res Function(_$_TriviaModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? createdAt = freezed,
    Object? triviaInfo = freezed,
  }) {
    return _then(_$_TriviaModel(
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<TriviaQuestion>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      triviaInfo: freezed == triviaInfo
          ? _value.triviaInfo
          : triviaInfo // ignore: cast_nullable_to_non_nullable
              as TriviaInfoModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TriviaModel implements _TriviaModel {
  const _$_TriviaModel(
      {required final List<TriviaQuestion> questions,
      this.createdAt,
      this.triviaInfo})
      : _questions = questions;

  factory _$_TriviaModel.fromJson(Map<String, dynamic> json) =>
      _$$_TriviaModelFromJson(json);

  final List<TriviaQuestion> _questions;
  @override
  List<TriviaQuestion> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final DateTime? createdAt;
  @override
  final TriviaInfoModel? triviaInfo;

  @override
  String toString() {
    return 'TriviaModel(questions: $questions, createdAt: $createdAt, triviaInfo: $triviaInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TriviaModel &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.triviaInfo, triviaInfo) ||
                other.triviaInfo == triviaInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_questions), createdAt, triviaInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TriviaModelCopyWith<_$_TriviaModel> get copyWith =>
      __$$_TriviaModelCopyWithImpl<_$_TriviaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TriviaModelToJson(
      this,
    );
  }
}

abstract class _TriviaModel implements TriviaModel {
  const factory _TriviaModel(
      {required final List<TriviaQuestion> questions,
      final DateTime? createdAt,
      final TriviaInfoModel? triviaInfo}) = _$_TriviaModel;

  factory _TriviaModel.fromJson(Map<String, dynamic> json) =
      _$_TriviaModel.fromJson;

  @override
  List<TriviaQuestion> get questions;
  @override
  DateTime? get createdAt;
  @override
  TriviaInfoModel? get triviaInfo;
  @override
  @JsonKey(ignore: true)
  _$$_TriviaModelCopyWith<_$_TriviaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
