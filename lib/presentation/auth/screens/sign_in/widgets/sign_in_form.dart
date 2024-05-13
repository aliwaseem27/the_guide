import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/routes/app_router.dart';
import '../../../blocs/auth_check/auth_check_bloc.dart';
import '../../../blocs/sign_in/sign_in_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCheckBloc, AuthCheckState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            context.router.replace(MainMenuRoute());
            context.read<AuthCheckBloc>().add(const AuthCheckEvent.authCheckRequested());
            debugPrint("I'm authenticated");
          },
          unauthenticated: (_) {
            context.router.replace(SignInRoute());
            context.read<AuthCheckBloc>().add(const AuthCheckEvent.authCheckRequested());
            debugPrint("I'm not authenticated");
          },
        );
      },
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Email",
                icon: Icon(Icons.email),
              ),
              onChanged: (value) => context.read<SignInBloc>().add(SignInEvent.emailChanged(value)),
            ),
            const SizedBox(height: 24),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Password",
                icon: Icon(Icons.password),
              ),
              onChanged: (value) => context.read<SignInBloc>().add(SignInEvent.passwordChanged(value)),
            ),
            const SizedBox(height: 24),

            // SignUp Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  context.read<SignInBloc>().add(const SignInEvent.signInWithEmailAndPasswordPressed());
                  context.read<AuthCheckBloc>().add(const AuthCheckEvent.authCheckRequested());
                },
                child: const Text("Sign In"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
