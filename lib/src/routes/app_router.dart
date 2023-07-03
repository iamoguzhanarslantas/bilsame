import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:bilsame/src/splash/splash.dart' show SplashPage;

final routerProvider = Provider(
  (ref) => GoRouter(
    initialLocation: SplashPage.routeName,
    routes: <RouteBase>[
      GoRoute(
        path: SplashPage.routeName,
        builder: (context, state) => const SplashPage(),
      ),
    ],
  ),
);
