import 'package:ai_trivia/app/data/model/result.dart';
import 'package:ai_trivia/app/data/model/trivia_info_model.dart';
import 'package:ai_trivia/app/data/model/trivia_model.dart';

abstract class TriviaRepository {
  Future<Result<TriviaModel>> generateTrivia(TriviaInfoModel info);
}
