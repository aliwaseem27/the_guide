import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_guide/domain/auth/entities/current_user.dart';
import 'package:the_guide/presentation/auth/blocs/sign_in/sign_in_bloc.dart';
import 'package:the_guide/presentation/auth/screens/sign_up_screen.dart';

import 'data/auth/repositories/firebase_auth_facade.dart';
import 'presentation/auth/blocs/sign_up/sign_up_bloc.dart';
import 'presentation/auth/screens/sign_in_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final FirebaseAuthFacade _authFacade = FirebaseAuthFacade();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider<SignInBloc>(
        create: (context) => SignInBloc(_authFacade),
        child: SignInScreen(),
      ),
    );
  }
}
