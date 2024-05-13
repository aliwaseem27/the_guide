part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required String email,
    required String password,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        email: "",
        password: "",
      );
}
