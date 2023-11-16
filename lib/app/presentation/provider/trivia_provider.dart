import 'package:ai_trivia/app/data/model/trivia_info_model.dart';
import 'package:ai_trivia/app/domain/trivia_repository.dart';
import 'package:ai_trivia/app/presentation/provider/trivia_state.dart';
import 'package:ai_trivia/core/di/service_locator.dart';
import 'package:ai_trivia/core/services/dialog_service/dialog_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final triviaProvider = NotifierProvider<TriviaProvider, TriviaState>(
  () => sl<TriviaProvider>(),
);

final class TriviaProvider extends Notifier<TriviaState> {
  final TriviaRepository triviaRepository;
  final DialogService dialogService;

  TriviaProvider({required this.triviaRepository, required this.dialogService});

  @override
  TriviaState build() => const TriviaState();

  Future<bool> generateTrivia(TriviaInfoModel info) async {
    state = state.copyWith(state: TriviaLoadingState.fetchingTrivia);
    final res = await triviaRepository.generateTrivia(info);
    state = state.copyWith(state: TriviaLoadingState.idle);
    return res.when(
      success: (trivia) {
        state = state.copyWith(trivia: trivia);
        return true;
      },
      error: (failure) {
        dialogService.displayMessage(failure.message);
        return false;
      },
    );
  }
}
