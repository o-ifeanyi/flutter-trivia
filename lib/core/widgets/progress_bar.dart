import 'package:ai_trivia/core/utils/config.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
    required this.value,
    required this.length,
  }) : super(key: key);

  final double value;
  final double length;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: Config.contentPadding(h: 20),
      child: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            Container(
              height: 5,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: (constraints.maxWidth * value) / length,
              child: Container(
                height: 5,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
