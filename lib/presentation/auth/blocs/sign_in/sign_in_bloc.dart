import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/auth/repositories/i_auth_facade.dart';

part 'sign_in_event.dart';

part 'sign_in_state.dart';

part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade _authFacade;

  SignInBloc(this._authFacade) : super(SignInState.initial()) {
    on<_EmailChanged>((event, emit) {
      emit(state.copyWith(
        email: event.emailStr,
      ));
    });
    on<_PasswordChanged>((event, emit) {
      emit(state.copyWith(
        password: event.passwordStr,
      ));
    });
    on<_SignInWithEmailAndPasswordPressed>((event, emit) {
      _authFacade.signInWithEmailAndPassword(
        email: state.email,
        password: state.password,
      );
    });
  }
}
