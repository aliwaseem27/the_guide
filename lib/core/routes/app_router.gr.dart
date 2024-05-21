// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AddCustomerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddCustomerScreen(),
      );
    },
    CalenderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CalenderScreen(),
      );
    },
    CustomerDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CustomerDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CustomerDetailsScreen(
          key: args.key,
          customer: args.customer,
        ),
      );
    },
    CustomerListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CustomerListScreen(),
      );
    },
    MainMenuRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainMenuScreen(),
      );
    },
    MapRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MapScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SignInScreen(key: args.key),
      );
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>(
          orElse: () => const SignUpRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SignUpScreen(key: args.key),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [AddCustomerScreen]
class AddCustomerRoute extends PageRouteInfo<void> {
  const AddCustomerRoute({List<PageRouteInfo>? children})
      : super(
          AddCustomerRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddCustomerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CalenderScreen]
class CalenderRoute extends PageRouteInfo<void> {
  const CalenderRoute({List<PageRouteInfo>? children})
      : super(
          CalenderRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalenderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CustomerDetailsScreen]
class CustomerDetailsRoute extends PageRouteInfo<CustomerDetailsRouteArgs> {
  CustomerDetailsRoute({
    Key? key,
    required Customer customer,
    List<PageRouteInfo>? children,
  }) : super(
          CustomerDetailsRoute.name,
          args: CustomerDetailsRouteArgs(
            key: key,
            customer: customer,
          ),
          initialChildren: children,
        );

  static const String name = 'CustomerDetailsRoute';

  static const PageInfo<CustomerDetailsRouteArgs> page =
      PageInfo<CustomerDetailsRouteArgs>(name);
}

class CustomerDetailsRouteArgs {
  const CustomerDetailsRouteArgs({
    this.key,
    required this.customer,
  });

  final Key? key;

  final Customer customer;

  @override
  String toString() {
    return 'CustomerDetailsRouteArgs{key: $key, customer: $customer}';
  }
}

/// generated route for
/// [CustomerListScreen]
class CustomerListRoute extends PageRouteInfo<void> {
  const CustomerListRoute({List<PageRouteInfo>? children})
      : super(
          CustomerListRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomerListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainMenuScreen]
class MainMenuRoute extends PageRouteInfo<void> {
  const MainMenuRoute({List<PageRouteInfo>? children})
      : super(
          MainMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainMenuRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MapScreen]
class MapRoute extends PageRouteInfo<void> {
  const MapRoute({List<PageRouteInfo>? children})
      : super(
          MapRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignInScreen]
class SignInRoute extends PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const PageInfo<SignInRouteArgs> page = PageInfo<SignInRouteArgs>(name);
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SignUpScreen]
class SignUpRoute extends PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SignUpRoute.name,
          args: SignUpRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<SignUpRouteArgs> page = PageInfo<SignUpRouteArgs>(name);
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
