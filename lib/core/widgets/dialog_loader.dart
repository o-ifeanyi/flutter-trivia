import 'package:ai_trivia/core/utils/config.dart';
import 'package:flutter/material.dart';

import '../platform_specific/platform_alert_dialog.dart';
import '../platform_specific/platform_progress_indicator.dart';

class DialogLoader {
  static Future request<T>({
    required BuildContext context,
    required Future<T> request,
    required Function(T) onDone,
  }) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return PlatformAlertDialog(
          content: Padding(
            padding: Config.contentPadding(h: 20, v: 20),
            child: const PlatformProgressIndicator(),
          ),
          actions: const [],
        );
      },
    );

    await request.then((value) {
      onDone.call(value);
    });
  }
}
