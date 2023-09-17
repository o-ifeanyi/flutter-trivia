import 'package:ai_trivia/core/routes/routes.dart';
import 'package:ai_trivia/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButton(
          text: 'Trivia Screen',
          onPressed: () => context.goNamed(Routes.trivia),
        ),
      ),
    );
  }
}
