import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bilsame/src/common/common.dart' show logger;
import 'package:bilsame/src/login/login.dart'
    show IAuthRepository, LoginControllerState;
import 'package:bilsame/src/user/user.dart' show userRepositoryProvider;

class LoginControllerStateNotifier extends StateNotifier<LoginControllerState> {
  final Ref ref;
  final IAuthRepository authenticationRepository;

  LoginControllerStateNotifier(
    this.ref, {
    required this.authenticationRepository,
  }) : super(const LoginControllerState(isLoading: false, error: null));

  Future<void> loginByGoogle() async {
    logger.i('user login by google');
    state = state.copyWith(isLoading: true);
    try {
      await authenticationRepository.signInByGoogle();
      final currentUser = authenticationRepository.getCurrentUser();
      if (currentUser != null) {
        ref.read(userRepositoryProvider).saveUser(currentUser);
        state = state.copyWith(isLoading: false);
      } else {
        state = state.copyWith(isLoading: false, error: 'current user null');
        logger.i('current user null');
      }
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  Future<void> logOut() async {
    logger.i('user logout');
    try {
      await authenticationRepository.signOut();
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }
}
