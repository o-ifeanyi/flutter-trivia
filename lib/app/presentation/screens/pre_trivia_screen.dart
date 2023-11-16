import 'package:ai_trivia/app/data/model/trivia_info_model.dart';
import 'package:ai_trivia/app/data/model/trivia_type.dart';
import 'package:ai_trivia/app/presentation/provider/trivia_provider.dart';
import 'package:ai_trivia/app/presentation/provider/trivia_state.dart';
import 'package:ai_trivia/app/presentation/widgets/custom_choice_chip.dart';
import 'package:ai_trivia/core/constants/constants.dart';
import 'package:ai_trivia/core/platform_specific/platform_progress_indicator.dart';
import 'package:ai_trivia/core/routes/routes.dart';
import 'package:ai_trivia/core/utils/config.dart';
import 'package:ai_trivia/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class PreTriviaScreen extends StatefulWidget {
  const PreTriviaScreen({super.key});

  @override
  State<PreTriviaScreen> createState() => _PreTriviaScreenState();
}

class _PreTriviaScreenState extends State<PreTriviaScreen> {
  final _formKey = GlobalKey<FormState>();
  TriviaInfoModel _triviaInfo = const TriviaInfoModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: Config.contentPadding(h: 20, v: 15),
          children: [
            CustomChoiceChip(
              header: 'Number of questions',
              choice: _triviaInfo.amount,
              choices: kAmountOptions,
              onSelected: (value) {
                setState(() {
                  _triviaInfo = _triviaInfo.copyWith(amount: value);
                });
              },
            ),
            Config.vGap15,
            CustomChoiceChip(
              header: 'Difficulty',
              choice: _triviaInfo.difficulty,
              choices: kDifficultyOptions,
              onSelected: (value) {
                setState(() {
                  _triviaInfo = _triviaInfo.copyWith(difficulty: value);
                });
              },
            ),
            Config.vGap15,
            CustomChoiceChip<TriviaType>(
              header: 'Type',
              choice: _triviaInfo.type,
              choices: ktriviaTypes,
              onSelected: (value) {
                setState(() {
                  _triviaInfo = _triviaInfo.copyWith(type: value);
                });
              },
            ),
            Config.vGap15,
            CustomChoiceChip(
              header: 'Category',
              choice: _triviaInfo.category,
              choices: ktriviaCategories,
              onSelected: (value) {
                setState(() {
                  _triviaInfo = _triviaInfo.copyWith(category: value);
                });
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Config.vGap10,
          Consumer(
            builder: (context, ref, child) {
              final state = ref.watch(triviaProvider).state;

              return switch (state) {
                TriviaLoadingState.fetchingTrivia =>
                  const PlatformProgressIndicator(),
                _ => CustomButton(
                    hPadding: 20,
                    text: 'Continue',
                    onPressed: () async {
                      final isValid =
                          _formKey.currentState?.validate() ?? false;
                      if (!isValid) return;
                      await ref
                          .read(triviaProvider.notifier)
                          .generateTrivia(_triviaInfo)
                          .then((success) {
                        if (success) context.goNamed(Routes.trivia);
                      });
                    },
                  )
              };
            },
          ),
          Config.vGap30,
        ],
      ),
    );
  }
}
