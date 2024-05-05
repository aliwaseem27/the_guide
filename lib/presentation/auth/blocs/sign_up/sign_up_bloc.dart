import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/auth/repositories/i_auth_facade.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final IAuthFacade _authFacade;

  SignUpBloc(this._authFacade) : super(SignUpState.initial()) {
    on<EmailChanged>((event, emit) {
      emit(state.copyWith(
        email: event.emailStr,
      ));
    });
    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(
        password: event.passwordStr,
      ));
    });
    on<RegisterWithEmailAndPasswordPressed>((event, emit) {
      _authFacade.registerInWithEmailAndPassword(
        email: state.email,
        password: state.password,
      );
    });
  }
}
