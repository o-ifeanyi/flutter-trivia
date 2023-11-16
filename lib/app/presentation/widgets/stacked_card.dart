import 'dart:math';

import 'package:ai_trivia/app/data/model/trivia_question_model.dart';
import 'package:ai_trivia/core/utils/config.dart';
import 'package:flutter/material.dart';

class StackedCard extends StatefulWidget {
  const StackedCard({
    super.key,
    required this.question,
    required this.updateIndex,
    required this.front,
    required this.back,
  });

  final TriviaQuestion question;
  final void Function(TriviaQuestion) updateIndex;
  final Widget front;
  final Widget back;

  @override
  State<StackedCard> createState() => _StackedCardState();
}

class _StackedCardState extends State<StackedCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotate;

  bool isFlipped = false;
  Offset offset = Offset.zero;
  double height = 330;
  double width = 260;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250));
    _rotate = Tween<double>(begin: pi, end: 0.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final i = min(widget.question.zIndex!, 6); // max of 6 cards deep
    final isLeft = widget.question.direction == Direction.left;

    final tiltAngle = (i * 3.5) * (3.14 / 180);
    return Transform.translate(
      offset: isLeft
          ? Offset(offset.dx - (i * (30 - (i * 2))), 0)
          : Offset(offset.dx + (i * (30 - (i * 2))), 0),
      child: Transform.rotate(
        angle: offset == Offset.zero
            ? isLeft
                ? -tiltAngle
                : tiltAngle
            : (offset.dx / 15) * (3.14 / 180),
        child: GestureDetector(
          onTap: () {
            if (i != 0) return;
            isFlipped = !isFlipped;
            isFlipped ? _controller.forward() : _controller.reverse();
          },
          onHorizontalDragUpdate: (details) {
            if (i != 0 || isFlipped) return;
            setState(() {
              offset = Offset(offset.dx + details.delta.dx, 0);
              height = 330 - min(40, offset.dx.abs());
              width = 260 - min(40, offset.dx.abs());
            });
          },
          onHorizontalDragEnd: (details) {
            if (i != 0 || isFlipped) return;
            final direction = offset.dx > 80
                ? Direction.right
                : offset.dx < -80
                    ? Direction.left
                    : widget.question.direction;

            if (offset.dx.abs() > 80) {
              widget
                  .updateIndex(widget.question.copyWith(direction: direction));
            }
            setState(() {
              offset = Offset.zero;
              height = 330;
              width = 260;
            });
          },
          child: AnimatedBuilder(
            animation: _rotate,
            builder: (context, child) {
              return Transform(
                transform: Matrix4.rotationY(_rotate.value)..setEntry(3, 0, 0),
                alignment: Alignment.center,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  height: isFlipped
                      ? Config.height * 0.7
                      : Config.y(height - (i * 25)),
                  width: isFlipped ? Config.width : Config.x(width - (i * 25)),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: colorScheme.onPrimary, width: 0.5),
                    borderRadius: BorderRadius.circular(25),
                    color: colorScheme.primary,
                  ),
                  child: Center(
                    child: _rotate.value < (pi / 2)
                        ? widget.back
                        : Transform(
                            transform: Matrix4.rotationY(_rotate.value),
                            alignment: Alignment.center,
                            child: widget.front,
                          ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
