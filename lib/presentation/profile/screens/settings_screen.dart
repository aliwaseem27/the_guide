import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_guide/presentation/auth/blocs/auth_check/auth_check_bloc.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("settings"),
        actions: [
          IconButton(
              onPressed: () => context.read<AuthCheckBloc>().add(const AuthCheckEvent.signOut()),
              icon: const Icon(Icons.logout)),
        ],
      ),
    );
  }
}
