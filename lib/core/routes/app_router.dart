import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';

import '../../presentation/auth/screens/sign_in/sign_in_screen.dart';
import '../../presentation/auth/screens/sign_up/sign_up_screen.dart';
import '../../presentation/customers/main_menu/main_menu.dart';
import '../../presentation/splash/splash_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: MainMenuRoute.page),
      ];
}
