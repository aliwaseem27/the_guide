import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_guide/core/routes/app_router.dart';

import '../../auth/blocs/auth_check/auth_check_bloc.dart';

@RoutePage()
class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCheckBloc, AuthCheckState>(
      listener: (context, state) {
        state.maybeMap(
          unauthenticated: (_) => context.router.replace(SignInRoute()),
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                context.read<AuthCheckBloc>().add(const AuthCheckEvent.signOut());
              },
              icon: const Icon(Icons.exit_to_app),
            ),
          ],
        ),
        body: Center(
          child: Text("Main Menu Screen"),
        ),
      ),
    );
  }
}
