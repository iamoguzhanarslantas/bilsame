import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_controller_state.freezed.dart';

@freezed
class LoginControllerState with _$LoginControllerState {
  const factory LoginControllerState({
    required bool isLoading,
    required String? error,
  }) = _LoginControllerState;

  factory LoginControllerState.init() => const LoginControllerState(
        isLoading: false,
        error: null,
      );
}
