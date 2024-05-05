import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_check_event.dart';
part 'auth_check_state.dart';
part 'auth_check_bloc.freezed.dart';

class AuthCheckBloc extends Bloc<AuthCheckEvent, AuthCheckState> {
  AuthCheckBloc() : super(const AuthCheckState.initial()) {
    on<AuthCheckEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
