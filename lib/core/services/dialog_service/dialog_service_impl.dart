import 'dart:async';
import 'dialog_service.dart';

class DialogServiceImpl implements DialogService {
  final StreamController<DialogModel> _controller =
      StreamController<DialogModel>();

  @override
  Stream<DialogModel> get stream => _controller.stream;

  @override
  void displayMessage(String message,
      {Status status = Status.failed, String? title}) {
    _controller.add(DialogModel(
      title: title,
      message: message,
      status: status,
    ));
  }

  @override
  void displayDialog(
      {required String title,
      required String message,
      DialogAction? action,
      Status status = Status.failed}) {
    _controller.add(DialogModel(
        title: title,
        message: message,
        status: status,
        action: action,
        displayType: DisplayType.dialog));
  }

  @override
  void dispose() => _controller.close();
}
