import 'package:ai_trivia/app/data/model/trivia_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/trivia_state.freezed.dart';

enum TriviaLoadingState { idle, fetchingTrivia }

@freezed
class TriviaState with _$TriviaState {
  const factory TriviaState({
    @Default(TriviaLoadingState.idle) TriviaLoadingState state,
    @Default(null) TriviaModel? trivia,
  }) = _TriviaState;
}
