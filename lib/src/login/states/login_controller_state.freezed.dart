// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_controller_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginControllerState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginControllerStateCopyWith<LoginControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginControllerStateCopyWith<$Res> {
  factory $LoginControllerStateCopyWith(LoginControllerState value,
          $Res Function(LoginControllerState) then) =
      _$LoginControllerStateCopyWithImpl<$Res, LoginControllerState>;
  @useResult
  $Res call({bool isLoading, String? error});
}

/// @nodoc
class _$LoginControllerStateCopyWithImpl<$Res,
        $Val extends LoginControllerState>
    implements $LoginControllerStateCopyWith<$Res> {
  _$LoginControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginControllerStateCopyWith<$Res>
    implements $LoginControllerStateCopyWith<$Res> {
  factory _$$_LoginControllerStateCopyWith(_$_LoginControllerState value,
          $Res Function(_$_LoginControllerState) then) =
      __$$_LoginControllerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String? error});
}

/// @nodoc
class __$$_LoginControllerStateCopyWithImpl<$Res>
    extends _$LoginControllerStateCopyWithImpl<$Res, _$_LoginControllerState>
    implements _$$_LoginControllerStateCopyWith<$Res> {
  __$$_LoginControllerStateCopyWithImpl(_$_LoginControllerState _value,
      $Res Function(_$_LoginControllerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$_LoginControllerState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoginControllerState implements _LoginControllerState {
  const _$_LoginControllerState({required this.isLoading, required this.error});

  @override
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'LoginControllerState(isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginControllerState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginControllerStateCopyWith<_$_LoginControllerState> get copyWith =>
      __$$_LoginControllerStateCopyWithImpl<_$_LoginControllerState>(
          this, _$identity);
}

abstract class _LoginControllerState implements LoginControllerState {
  const factory _LoginControllerState(
      {required final bool isLoading,
      required final String? error}) = _$_LoginControllerState;

  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_LoginControllerStateCopyWith<_$_LoginControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}
