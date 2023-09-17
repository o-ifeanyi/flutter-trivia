import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

extension DateExtension on DateTime {
  String get formatdmy {
    final kDfMY = DateFormat('MMM d, y');
    return kDfMY.format(this);
  }

  String get formatStroke {
    final kDfMY = DateFormat('M/d/y');
    return kDfMY.format(this);
  }

  String get formatTime {
    final kDfMY = DateFormat('H:m:s');
    return kDfMY.format(this);
  }
}

extension DoubleExt on double {
  String get price => NumberFormat.simpleCurrency(
        name: 'NGN',
        decimalDigits: 2,
      ).format(this);

  String get trim => toStringAsFixed(2);
}

extension StringExt on String {
  String get routeName {
    if (startsWith('/')) {
      return split('/').last;
    }
    return this;
  }

  double get price => double.parse(replaceAll(RegExp(r'[^\d.]'), ''));

  String get capSentence {
    if (trim().isEmpty) return this;
    final words = split(' ');
    return words
        .map((e) => "${e.substring(0, 1).toUpperCase()}${e.substring(1)}")
        .join(' ');
  }

  bool get isEmail {
    if (isEmpty) return false;
    const emailRegex =
        r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

    return RegExp(emailRegex).hasMatch(this);
  }
}

extension ListExt on List {
  int get lastIndex => length - 1;
}

class CurrencyInputFormatter extends TextInputFormatter {
  final int? maxDigits;
  CurrencyInputFormatter({this.maxDigits});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    if (maxDigits != null && newValue.selection.baseOffset >= maxDigits!) {
      return oldValue;
    }

    double value = double.parse(newValue.text);
    // final formatter = NumberFormat("#,##0.00", "en_US");
    String newText = (value / 100).price;
    return newValue.copyWith(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length));
  }
}
