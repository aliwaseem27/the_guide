import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_guide/injection.dart';

import '../../../../data/auth/repositories/firebase_auth_facade.dart';
import '../../blocs/sign_up/sign_up_bloc.dart';
import 'widgets/sign_up_form.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignUpBloc>(
      create: (context) => getIt<SignUpBloc>(),
      child: Scaffold(
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
                SignUpForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
