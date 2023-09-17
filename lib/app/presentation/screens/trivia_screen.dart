import 'package:ai_trivia/core/utils/app_icons.dart';
import 'package:ai_trivia/core/utils/config.dart';
import 'package:flutter/material.dart';

class TriviaScreen extends StatelessWidget {
  const TriviaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: Config.contentPadding(h: 20, v: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('Browse', style: Config.textTheme.titleSmall),
                  const Spacer(),
                  const Circle(),
                  Config.hGap20,
                  const Circle(),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: Config.y(330),
                    width: Config.x(260),
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: colorScheme.onPrimary, width: 0.5),
                      borderRadius: BorderRadius.circular(25),
                      color: colorScheme.primary,
                    ),
                  ),
                  Config.vGap30,
                  Container(
                    padding: Config.contentPadding(h: 20, v: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: colorScheme.primary,
                    ),
                    child: Icon(
                      AppIcons.user,
                      size: 20,
                      color: colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: Config.contentPadding(h: 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Circle(),
                    Circle(),
                    Circle(),
                    Circle(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Circle extends StatelessWidget {
  const Circle({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return CircleAvatar(
      radius: 10,
      backgroundColor: colorScheme.primary,
    );
  }
}
