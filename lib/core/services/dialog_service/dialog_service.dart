import 'package:overlay_support/overlay_support.dart';

enum DisplayType { snackbar, dialog }

enum Status { success, failed }

class DialogModel {
  final String? title;
  final String message;
  final DialogAction? action;
  final NotificationPosition position;
  final Duration duration;
  final DisplayType displayType;
  final Status status;

  DialogModel({
    required this.title,
    required this.message,
    this.duration = const Duration(seconds: 4),
    this.position = NotificationPosition.top,
    this.action,
    this.displayType = DisplayType.snackbar,
    this.status = Status.failed,
  });
}

class DialogAction {
  final String text;
  final void Function() onPressed;

  DialogAction({required this.text, required this.onPressed});
}

abstract class DialogService {
  Stream<DialogModel> get stream;

  void displayMessage(String message,
      {Status status = Status.failed, String? title});

  void displayDialog(
      {required String title,
      required String message,
      DialogAction? action,
      Status status = Status.failed});

  void dispose();
}
