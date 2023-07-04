import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bilsame/src/user/user.dart'
    show
        IUserRepository,
        UserControllerState,
        UserControllerStateNotifier,
        UserRepository;

final userRepositoryProvider = Provider<IUserRepository>(
  (ref) => UserRepository(ref),
);

final userControllerProvider = StateNotifierProvider.autoDispose<
    UserControllerStateNotifier, UserControllerState>(
  (ref) => UserControllerStateNotifier(
    ref,
    userRepository: ref.watch(userRepositoryProvider),
  ),
);
