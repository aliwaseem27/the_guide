part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required String email,
    required String password,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        email: '',
        password: '',
      );
}
