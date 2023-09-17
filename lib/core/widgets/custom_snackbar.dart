import 'package:ai_trivia/core/services/dialog_service/dialog_service.dart';
import 'package:ai_trivia/core/utils/config.dart';
import 'package:flutter/material.dart';

class CustomSnackBar extends StatelessWidget {
  final DialogModel dialogModel;
  final void Function() onDismiss;

  const CustomSnackBar({
    Key? key,
    required this.dialogModel,
    required this.onDismiss,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Material(
      color: Colors.transparent,
      child: GestureDetector(
        onTapDown: (_) => onDismiss(),
        child: Container(
          padding: Config.contentPadding(h: 20, v: 25),
          width: size.width,
          decoration: BoxDecoration(
            borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(5)),
            color: dialogModel.status == Status.success
                ? Colors.greenAccent
                : Theme.of(context).colorScheme.error,
          ),
          child: SafeArea(
            bottom: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (dialogModel.title != null) ...[
                  Text(
                    dialogModel.title!,
                    style: Config.textTheme.bodyMedium?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                ],
                Text(
                  dialogModel.message,
                  style: Config.textTheme.bodyMedium
                      ?.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
