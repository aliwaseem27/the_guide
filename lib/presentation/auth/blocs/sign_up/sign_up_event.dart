part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.emailChanged(String emailStr) = _EmailChanged;

  const factory SignUpEvent.passwordChanged(String passwordStr) = _PasswordChanged;

  const factory SignUpEvent.registerWithEmailAndPasswordPressed() = _RegisterWithEmailAndPasswordPressed;
}
