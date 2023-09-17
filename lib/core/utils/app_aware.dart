import 'package:ai_trivia/core/di/service_locator.dart';
import 'package:ai_trivia/core/platform_specific/platform_alert_dialog.dart';
import 'package:ai_trivia/core/services/dialog_service/dialog_service.dart'
    hide DialogAction;
import 'package:ai_trivia/core/widgets/custom_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppAware extends ConsumerStatefulWidget {
  final Widget child;

  const AppAware({
    Key? key,
    required this.child,
  }) : super(key: key);
  @override
  AppAwareState createState() => AppAwareState();
}

class AppAwareState extends ConsumerState<AppAware> {
  OverlaySupportEntry? _snackBarEntry;
  OverlaySupportEntry? _dialogEntry;
  @override
  void initState() {
    super.initState();
    final dialog = sl<DialogService>();
    dialog.stream.listen((event) {
      if (event.displayType == DisplayType.dialog) {
        _dialogEntry?.dismiss();
        _dialogEntry = showOverlay(
          (context, _) {
            return Material(
              color: Colors.black38,
              child: PlatformAlertDialog(
                title: event.title,
                content: Text(event.message),
                actions: [
                  DialogAction(
                    text: 'Close',
                    onPressed: () => _dialogEntry!.dismiss(),
                  ),
                  if (event.action != null)
                    DialogAction(
                      isDefaultAction: true,
                      text: event.action!.text,
                      onPressed: event.action!.onPressed,
                    ),
                ],
              ),
            );
          },
          duration: Duration.zero,
        );
        HapticFeedback.heavyImpact();
      } else {
        _snackBarEntry?.dismiss();
        _snackBarEntry = showOverlayNotification(
          (context) {
            return CustomSnackBar(
              dialogModel: event,
              onDismiss: _snackBarEntry!.dismiss,
            );
          },
          position: event.position,
          duration: event.duration,
        );
        HapticFeedback.mediumImpact();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: widget.child,
    );
  }
}
