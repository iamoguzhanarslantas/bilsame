import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bilsame/src/login/login.dart'
    show
        AuthRepository,
        IAuthRepository,
        LoginControllerState,
        LoginControllerStateNotifier;

final authRepositoryProvider = Provider<IAuthRepository>(
  (ref) => AuthRepository(ref),
);

final loginControllerProvider = StateNotifierProvider.autoDispose<
    LoginControllerStateNotifier, LoginControllerState>(
  (ref) => LoginControllerStateNotifier(
    ref,
    authenticationRepository: ref.watch(authRepositoryProvider),
  ),
);
