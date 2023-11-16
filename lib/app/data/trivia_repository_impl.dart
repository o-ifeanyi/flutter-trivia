import 'package:ai_trivia/app/data/model/trivia_question_model.dart';
import 'package:ai_trivia/app/data/model/result.dart';
import 'package:ai_trivia/app/data/model/trivia_info_model.dart';
import 'package:ai_trivia/app/data/model/trivia_model.dart';
import 'package:ai_trivia/app/domain/trivia_repository.dart';
import 'package:ai_trivia/core/services/network_service/network_service.dart';
import 'package:flutter/foundation.dart';

final class TriviaRepositoryImpl implements TriviaRepository {
  final NetworkService networkService;

  const TriviaRepositoryImpl({required this.networkService});

  @override
  Future<Result<TriviaModel>> generateTrivia(TriviaInfoModel info) async {
    try {
      final res = await networkService.get(
        '/api.php',
        queryParameters: {
          "amount": info.amount,
          "category": info.category!.id,
          "difficulty": info.difficulty!.toLowerCase(),
          "type": info.type!.id,
        },
      );
      print(res.data);
      final questions =
          (res.data['results'] as List).map((e) => TriviaQuestion.fromJson(e));
      final trivia = TriviaModel(
        questions: questions.toList(),
        createdAt: DateTime.now(),
        triviaInfo: info,
      );

      return Result.success(trivia);
    } on CustomError catch (error) {
      debugPrint('$error');
      return Result.error(error);
    } catch (error) {
      debugPrint('$error');
      return Result.error(CustomError.message('Failed to generate trivia'));
    }
  }
}
