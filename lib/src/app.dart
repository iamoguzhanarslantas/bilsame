import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bilsame/src/common/common.dart' show AppThemes;
import 'package:bilsame/src/config/config.dart' show AppConfig;
import 'package:bilsame/src/routes/routes.dart' show routerProvider;

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      routerConfig: router,
      title: AppConfig.appTitle,
      theme: AppThemes.darkTheme,
    );
  }
}
