import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:bilsame/src/config/config.dart' show AppConfig;
import 'package:bilsame/src/login/login.dart'
    show LoginPage, loginControllerProvider;
import 'package:bilsame/src/user/user.dart' show userControllerProvider;

class UserPage extends ConsumerWidget {
  static const routeName = '/user';
  const UserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConfig.appBarTitle),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              ref
                  .read(userControllerProvider.notifier)
                  .readUserInfo()
                  .toString(),
            ),
            TextButton(
              onPressed: () async {
                await ref
                    .read(loginControllerProvider.notifier)
                    .logOut()
                    .then((value) => context.go(LoginPage.routeName));
              },
              child: const Text('Google Cikis'),
            ),
          ],
        ),
      ),
    );
  }
}
