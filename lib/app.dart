import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_guide/core/routes/app_router.dart';
import 'package:the_guide/domain/auth/entities/current_user.dart';
import 'package:the_guide/injection.dart';
import 'package:the_guide/presentation/auth/blocs/auth_check/auth_check_bloc.dart';
import 'package:the_guide/presentation/auth/blocs/sign_in/sign_in_bloc.dart';
import 'package:the_guide/presentation/auth/screens/sign_up/sign_up_screen.dart';

import 'data/auth/repositories/firebase_auth_facade.dart';
import 'presentation/auth/blocs/sign_up/sign_up_bloc.dart';
import 'presentation/auth/screens/sign_in/sign_in_screen.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<AuthCheckBloc>()..add(const AuthCheckEvent.authCheckRequested()),
          ),
        ],
        child: MaterialApp.router(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routerConfig: _appRouter.config(),
        ));
  }
}
