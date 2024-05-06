import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routes/app_router.dart';
import '../../../../data/auth/repositories/firebase_auth_facade.dart';
import '../../blocs/sign_in/sign_in_bloc.dart';
import 'widgets/sign_in_form.dart';

@RoutePage()
class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final FirebaseAuthFacade _authFacade = FirebaseAuthFacade();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignInBloc>(
      create: (context) => SignInBloc(_authFacade),
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text("Sign In", style: Theme.of(context).textTheme.headlineLarge),
                const SizedBox(height: 24),

                // SignUp Form
                SignInForm(),

                // Register
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () => context.router.push(SignUpRoute()),
                    child: const Text("Don't have an account?"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
