import 'package:ai_trivia/app/presentation/screens/home_screen.dart';
import 'package:ai_trivia/app/presentation/screens/trivia_screen.dart';
import 'package:ai_trivia/core/routes/routes.dart';
import 'package:ai_trivia/core/utils/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final rootNavigatorKey = GlobalKey<NavigatorState>();

  Page<dynamic> pushPage(Widget screen) {
    if (Config.isAndroid) {
      return MaterialPage<void>(child: screen);
    }
    return CupertinoPage(child: screen);
  }

  GoRoute route({
    required String path,
    required Widget? screen,
    Page<dynamic> Function(BuildContext, GoRouterState)? pageBuilder,
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
      path: path,
      name: path.routeName,
      pageBuilder: pageBuilder ?? (_, __) => pushPage(screen!),
      routes: routes,
    );
  }

  return GoRouter(
    initialLocation: Routes.home,
    navigatorKey: rootNavigatorKey,
    routes: [
      route(
        path: Routes.home,
        screen: const HomeScreen(),
        routes: [
          route(path: Routes.trivia, screen: const TriviaScreen()),
        ],
      ),
    ],
  );
});
