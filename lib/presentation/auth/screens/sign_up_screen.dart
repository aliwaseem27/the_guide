import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/sign_up/sign_up_bloc.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
              Text("Sign Up", style: Theme.of(context).textTheme.headlineLarge),
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
                      onChanged: (value) => context.read<SignUpBloc>().add(SignUpEvent.emailChanged(value)),
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Password",
                        icon: Icon(Icons.password),
                      ),
                      onChanged: (value) => context.read<SignUpBloc>().add(SignUpEvent.passwordChanged(value)),
                    ),
                    const SizedBox(height: 24),

                    // SignUp Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () =>
                            context.read<SignUpBloc>().add(const SignUpEvent.registerWithEmailAndPasswordPressed()),
                        child: const Text("Sign Up"),
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
