import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:bilsame/src/common/common.dart' show logger;
import 'package:bilsame/src/login/login.dart' show LoginPage;
import 'package:bilsame/src/splash/splash.dart'
    show SplashPageState, firebaseAuthProvider, splashPageProvider;
import 'package:bilsame/src/user/user.dart' show UserPage;

class SplashPage extends HookConsumerWidget {
  static const routeName = '/';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final splashPage = ref.watch(splashPageProvider);
    useEffect(
      () {
        if (!splashPage.appInitialized) {
          ref.read(splashPageProvider.notifier).initializeApp();
        } else {
          logger.wtf('should not open splash page if app is initialized');
        }
        return null;
      },
      [],
    );

    ref.listen<SplashPageState>(splashPageProvider, (previous, next) {
      if (next.appInitialized) {
        logger.i('app initialized');

        if (ref.read(firebaseAuthProvider) != null) {
          context.go(UserPage.routeName);
        } else {
          context.go(LoginPage.routeName);
        }
      }
    });
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
