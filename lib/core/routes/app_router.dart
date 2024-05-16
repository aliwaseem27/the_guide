import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';

import '../../presentation/auth/screens/sign_in/sign_in_screen.dart';
import '../../presentation/auth/screens/sign_up/sign_up_screen.dart';
import '../../presentation/calender/screens/calender_screen.dart';
import '../../presentation/customers/screens/add_customer/add_customer_screen.dart';
import '../../presentation/customers/screens/customer_details/customer_details_screen.dart';
import '../../presentation/customers/screens/customer_list/customer_list_screen.dart';
import '../../presentation/customers/screens/main_menu/main_menu.dart';
import '../../presentation/map/screens/map_screen.dart';
import '../../presentation/profile/screens/settings_screen.dart';
import '../../presentation/search/screens/search_screen.dart';
import '../../presentation/splash/splash_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(
          page: MainMenuRoute.page,
          children: [
            AutoRoute(page: CalenderRoute.page),
            AutoRoute(page: SearchRoute.page),
            AutoRoute(page: MapRoute.page),
            AutoRoute(page: SettingsRoute.page),
          ],
        ),
        AutoRoute(page: CustomerDetailsRoute.page),
        AutoRoute(page: CustomerListRoute.page),
        AutoRoute(page: AddCustomerRoute.page),
      ];
}
