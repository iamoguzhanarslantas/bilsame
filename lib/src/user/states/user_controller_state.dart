import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_controller_state.freezed.dart';

@freezed
class UserControllerState with _$UserControllerState {
  const factory UserControllerState({
    required String? name,
    required String? email,
  }) = _UserControllerState;

  factory UserControllerState.init() => const UserControllerState(
        name: '',
        email: '',
      );
}
