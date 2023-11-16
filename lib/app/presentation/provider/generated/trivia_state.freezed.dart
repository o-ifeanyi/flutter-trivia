// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../trivia_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TriviaState {
  TriviaLoadingState get state => throw _privateConstructorUsedError;
  TriviaModel? get trivia => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TriviaStateCopyWith<TriviaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TriviaStateCopyWith<$Res> {
  factory $TriviaStateCopyWith(
          TriviaState value, $Res Function(TriviaState) then) =
      _$TriviaStateCopyWithImpl<$Res, TriviaState>;
  @useResult
  $Res call({TriviaLoadingState state, TriviaModel? trivia});

  $TriviaModelCopyWith<$Res>? get trivia;
}

/// @nodoc
class _$TriviaStateCopyWithImpl<$Res, $Val extends TriviaState>
    implements $TriviaStateCopyWith<$Res> {
  _$TriviaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? trivia = freezed,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as TriviaLoadingState,
      trivia: freezed == trivia
          ? _value.trivia
          : trivia // ignore: cast_nullable_to_non_nullable
              as TriviaModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TriviaModelCopyWith<$Res>? get trivia {
    if (_value.trivia == null) {
      return null;
    }

    return $TriviaModelCopyWith<$Res>(_value.trivia!, (value) {
      return _then(_value.copyWith(trivia: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TriviaStateCopyWith<$Res>
    implements $TriviaStateCopyWith<$Res> {
  factory _$$_TriviaStateCopyWith(
          _$_TriviaState value, $Res Function(_$_TriviaState) then) =
      __$$_TriviaStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TriviaLoadingState state, TriviaModel? trivia});

  @override
  $TriviaModelCopyWith<$Res>? get trivia;
}

/// @nodoc
class __$$_TriviaStateCopyWithImpl<$Res>
    extends _$TriviaStateCopyWithImpl<$Res, _$_TriviaState>
    implements _$$_TriviaStateCopyWith<$Res> {
  __$$_TriviaStateCopyWithImpl(
      _$_TriviaState _value, $Res Function(_$_TriviaState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? trivia = freezed,
  }) {
    return _then(_$_TriviaState(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as TriviaLoadingState,
      trivia: freezed == trivia
          ? _value.trivia
          : trivia // ignore: cast_nullable_to_non_nullable
              as TriviaModel?,
    ));
  }
}

/// @nodoc

class _$_TriviaState implements _TriviaState {
  const _$_TriviaState(
      {this.state = TriviaLoadingState.idle, this.trivia = null});

  @override
  @JsonKey()
  final TriviaLoadingState state;
  @override
  @JsonKey()
  final TriviaModel? trivia;

  @override
  String toString() {
    return 'TriviaState(state: $state, trivia: $trivia)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TriviaState &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.trivia, trivia) || other.trivia == trivia));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, trivia);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TriviaStateCopyWith<_$_TriviaState> get copyWith =>
      __$$_TriviaStateCopyWithImpl<_$_TriviaState>(this, _$identity);
}

abstract class _TriviaState implements TriviaState {
  const factory _TriviaState(
      {final TriviaLoadingState state,
      final TriviaModel? trivia}) = _$_TriviaState;

  @override
  TriviaLoadingState get state;
  @override
  TriviaModel? get trivia;
  @override
  @JsonKey(ignore: true)
  _$$_TriviaStateCopyWith<_$_TriviaState> get copyWith =>
      throw _privateConstructorUsedError;
}
