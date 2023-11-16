abstract class Routes {
  static String home = '/';
  static String trivia = 'trivia';
  static String preTrivia = 'pre_trivia';
}

extension Name on String {
  String get routeName {
    if (this == '/') return this;
    if (startsWith('/')) return split('/').last;

    return this;
  }
}
