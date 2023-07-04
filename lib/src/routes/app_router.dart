import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:bilsame/src/login/login.dart' show LoginPage;
import 'package:bilsame/src/splash/splash.dart' show SplashPage;
import 'package:bilsame/src/user/user.dart' show UserPage;

final routerProvider = Provider(
  (ref) => GoRouter(
    initialLocation: SplashPage.routeName,
    routes: <RouteBase>[
      GoRoute(
        path: LoginPage.routeName,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: SplashPage.routeName,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: UserPage.routeName,
        builder: (context, state) => const UserPage(),
      ),
    ],
  ),
);
