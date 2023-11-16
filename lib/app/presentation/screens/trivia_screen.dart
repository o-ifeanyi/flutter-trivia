import 'package:ai_trivia/app/data/model/trivia_question_model.dart';
import 'package:ai_trivia/app/presentation/provider/trivia_provider.dart';
import 'package:ai_trivia/app/presentation/widgets/back_view.dart';
import 'package:ai_trivia/app/presentation/widgets/stacked_card.dart';
import 'package:ai_trivia/core/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TriviaScreen extends ConsumerStatefulWidget {
  const TriviaScreen({super.key});

  @override
  ConsumerState<TriviaScreen> createState() => _TriviaScreenState();
}

class _TriviaScreenState extends ConsumerState<TriviaScreen> {
  late List<TriviaQuestion> _questions;

  @override
  void initState() {
    super.initState();
    final trivia = ref.read(triviaProvider).trivia!;
    _questions = List.generate(
      trivia.questions.length,
      (index) => trivia.questions[index].copyWith(
        index: index,
        zIndex: index,
        direction: Direction.left,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final sorted = List<TriviaQuestion>.from(_questions)
      ..sort(((a, b) => b.zIndex!.compareTo(a.zIndex!)));
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: sorted
                  .map((question) => StackedCard(
                        question: question,
                        front: Center(
                          child:
                              Text('Front', style: Config.textTheme.titleSmall),
                        ),
                        back: BackView(question: question),
                        updateIndex: (swiped) {
                          _questions[swiped.index!] = swiped;
                          final right = _questions
                              .where((e) => e.direction == Direction.right);
                          final left = _questions
                              .where((e) => e.direction == Direction.left);

                          if ((swiped.direction == Direction.right &&
                                  left.isNotEmpty) ||
                              (swiped.direction == Direction.left &&
                                  right.isNotEmpty)) {
                            for (int i = 0; i < _questions.length; i++) {
                              switch (swiped.direction!) {
                                case Direction.left:
                                  if (right.any(
                                      (e) => e.index == _questions[i].index)) {
                                    _questions[i] = _questions[i].copyWith(
                                        zIndex: _questions[i].zIndex! - 1);
                                  } else {
                                    _questions[i] = _questions[i].copyWith(
                                        zIndex: _questions[i].zIndex! + 1);
                                  }
                                case Direction.right:
                                  if (left.any(
                                      (e) => e.index == _questions[i].index)) {
                                    _questions[i] = _questions[i].copyWith(
                                        zIndex: _questions[i].zIndex! - 1);
                                  } else {
                                    _questions[i] = _questions[i].copyWith(
                                        zIndex: _questions[i].zIndex! + 1);
                                  }
                              }
                            }
                            setState(() {});
                          }
                        },
                      ))
                  .toList(),
            ),
          ),
          Config.vGap20,
        ],
      ),
    );
  }
}
