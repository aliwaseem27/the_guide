import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_guide/core/routes/app_router.dart';

@RoutePage()
class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        CalenderRoute(),
        SearchRoute(),
        MapRoute(),
        SettingsRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) => tabsRouter.setActiveIndex(index),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: "Calender",
                backgroundColor: Colors.blueAccent,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
                backgroundColor: Colors.teal,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.map),
                label: "Map",
                backgroundColor: Colors.purple,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
                backgroundColor: Colors.pinkAccent,
              ),
            ],
          ),
        );
      },
    );
  }
}

// return BlocListener<AuthCheckBloc, AuthCheckState>(
// listener: (context, state) {
// state.maybeMap(
// unauthenticated: (_) => context.router.replace(SignInRoute()),
// orElse: () {},
// );
// },
// child: Scaffold(
// appBar: AppBar(
// actions: [
// IconButton(
// onPressed: () {
// context.read<AuthCheckBloc>().add(const AuthCheckEvent.signOut());
// },
// icon: const Icon(Icons.exit_to_app),
// ),
// ],
// ),
// body: Center(
// child: Text("Main Menu Screen"),
// ),
// bottomNavigationBar:,
// ),
// );

// destinations: [
// NavigationDestination(icon: Icon(Icons.calendar_month), label: "Calender"),
// NavigationDestination(icon: Icon(Icons.search), label: "Search"),
// NavigationDestination(icon: Icon(Icons.add_business), label: "New"),
// NavigationDestination(icon: Icon(Icons.map), label: "Map"),
// NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
// ],
