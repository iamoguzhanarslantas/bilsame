import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:bilsame/src/common/common.dart' show AlertDialogWithTextButton;
import 'package:bilsame/src/config/config.dart' show AppConfig;
import 'package:bilsame/src/login/login.dart' show loginControllerProvider;
import 'package:bilsame/src/user/user.dart' show UserPage;

class LoginPage extends ConsumerWidget {
  static const routeName = '/login';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginController = ref.watch(loginControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConfig.appBarTitle),
      ),
      body: loginController.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: TextButton(
                onPressed: () {
                  ref
                      .read(loginControllerProvider.notifier)
                      .loginByGoogle()
                      .then(
                    (_) async {
                      if (ref.read(loginControllerProvider).error == null) {
                        context.go(UserPage.routeName);
                      } else {
                        await showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) => AlertDialogWithTextButton(
                            title: 'Sign in Failed',
                            content:
                                'Could not sign in with Google. Please try again.',
                            buttonTitle: 'OK',
                            onPressed: () {
                              context.pop();
                            },
                          ),
                        );
                        ref.invalidate(loginControllerProvider);
                      }
                    },
                  );
                },
                child: const Text('Google Giris'),
              ),
            ),
    );
  }
}
