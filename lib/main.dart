import 'dart:async';

import 'package:ai_trivia/core/di/service_locator.dart';
import 'package:ai_trivia/core/routes/router.dart';
import 'package:ai_trivia/core/utils/app_aware.dart';
import 'package:ai_trivia/core/utils/themes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      Paint.enableDithering = true;
      await initServiceLocator();
      if (kReleaseMode) {
        debugPrint = (String? message, {int? wrapWidth}) {};
      }

      runApp(const ProviderScope(child: MainApp()));
    },
    (error, stack) {
      debugPrint('$error: $stack');
    },
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(routerProvider);

    return ScreenUtilInit(
      designSize: MediaQuery.sizeOf(context),
      minTextAdapt: true,
      builder: (context, child) {
        return AppAware(
          child: MaterialApp.router(
            title: 'School Bills',
            theme: AppTheme.darkTheme(),
            darkTheme: AppTheme.darkTheme(),
            themeMode: AppTheme.themeMode(context),
            routerConfig: goRouter,
            builder: (BuildContext context, Widget? child) {
              final mediaQueryData = MediaQuery.of(context);
              final scale = mediaQueryData.textScaleFactor.clamp(0.5, 1.0);
              return MediaQuery(
                data: mediaQueryData.copyWith(
                  textScaleFactor: scale,
                ),
                child: child!,
              );
            },
          ),
        );
      },
    );
  }
}
