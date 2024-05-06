import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_guide/core/routes/app_router.dart';
import 'package:the_guide/presentation/customers/main_menu/main_menu.dart';

import '../auth/blocs/auth_check/auth_check_bloc.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCheckBloc, AuthCheckState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            context.router.replace( MainMenuRoute());
            debugPrint("I'm authenticated");
          },
          unauthenticated: (_) {
            context.router.replace( SignInRoute());
            debugPrint("I'm not authenticated");
          },
        );
      },
      child: Scaffold(
        body: Center(
          child: Text("Splash Screen"),
        ),
      ),
    );
  }
}
