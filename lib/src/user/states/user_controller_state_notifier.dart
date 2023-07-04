import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bilsame/src/common/common.dart' show logger;
import 'package:bilsame/src/login/login.dart' show authRepositoryProvider;
import 'package:bilsame/src/user/user.dart'
    show IUserRepository, UserControllerState, userRepositoryProvider;

class UserControllerStateNotifier extends StateNotifier<UserControllerState> {
  final Ref ref;
  final IUserRepository userRepository;

  UserControllerStateNotifier(
    this.ref, {
    required this.userRepository,
  }) : super(const UserControllerState(name: '', email: ''));

  Future<void> readUserInfo() async {
    try {
      final currentUser = ref.watch(authRepositoryProvider).getCurrentUser();
      if (currentUser != null) {
        ref.read(userRepositoryProvider).readUser(currentUser);
      } else {
        logger.i('current user null');
      }
    } catch (e) {
      logger.e(e);
    }
  }
}
