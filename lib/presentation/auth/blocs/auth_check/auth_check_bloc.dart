import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:the_guide/domain/auth/repositories/i_auth_facade.dart';

part 'auth_check_event.dart';

part 'auth_check_state.dart';

part 'auth_check_bloc.freezed.dart';

@injectable
class AuthCheckBloc extends Bloc<AuthCheckEvent, AuthCheckState> {
  final IAuthFacade _authFacade;

  AuthCheckBloc(this._authFacade) : super(const AuthCheckState.initial()) {
    on<_AuthCheckRequested>((event, emit) {
      final userSignedIn = _authFacade.isSignedIn();
      emit(userSignedIn ? const AuthCheckState.authenticated() : const AuthCheckState.unauthenticated());
    });
    on<_SignOut>((event, emit) async {
      await _authFacade.signOut();
      emit(const AuthCheckState.unauthenticated());
    });
  }
}
