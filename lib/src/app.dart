import 'package:flutter/material.dart';

import 'package:bilsame/src/config/config.dart' show Config;
import 'package:bilsame/src/splash/splash.dart' show SplashPage;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Config.appTitle,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}
