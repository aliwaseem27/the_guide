import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/sign_in/sign_in_bloc.dart';

@RoutePage()
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Form(
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
                        onPressed: ()=> context.read<SignInBloc>().add(const SignInEvent.signInWithEmailAndPasswordPressed()),
                        child: const Text("Sign In"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}