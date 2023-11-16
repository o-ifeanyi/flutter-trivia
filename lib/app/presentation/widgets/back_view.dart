import 'package:ai_trivia/app/data/model/trivia_question_model.dart';
import 'package:ai_trivia/app/presentation/widgets/custom_option.dart';
import 'package:ai_trivia/core/utils/config.dart';
import 'package:flutter/material.dart';

class BackView extends StatelessWidget {
  final TriviaQuestion question;
  const BackView({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: Config.contentPadding(h: 15, v: 15),
      children: [
        Text(question.question, style: Config.textTheme.titleSmall),
        Config.vGap15,
        ...question.options
            .map((e) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: CustomOption(
                    labelPadding: const EdgeInsets.all(4),
                    label: Row(
                      children: [
                        Expanded(
                          child: Text(e, style: Config.textTheme.bodyLarge),
                        ),
                      ],
                    ),
                    selected: e == '4',
                    onSelected: (p0) {},
                  ),
                ))
            .toList()
      ],
    );
  }
}
