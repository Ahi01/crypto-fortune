// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************


part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CryptoFortune.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CryptoFortune(),
      );
    },
    FortuneCookie.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FortuneCookie(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    MyWallet.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyWallet(),
      );
    },
    Onboarding.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Onboarding(),
      );
    },
    Settings.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Settings(),
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
/// [CryptoFortune]
class CryptoFortune extends PageRouteInfo<void> {
  const CryptoFortune({List<PageRouteInfo>? children})
      : super(
          CryptoFortune.name,
          initialChildren: children,
        );

  static const String name = 'CryptoFortune';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FortuneCookie]
class FortuneCookie extends PageRouteInfo<void> {
  const FortuneCookie({List<PageRouteInfo>? children})
      : super(
          FortuneCookie.name,
          initialChildren: children,
        );

  static const String name = 'FortuneCookie';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyWallet]
class MyWallet extends PageRouteInfo<void> {
  const MyWallet({List<PageRouteInfo>? children})
      : super(
          MyWallet.name,
          initialChildren: children,
        );

  static const String name = 'MyWallet';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Onboarding]
class Onboarding extends PageRouteInfo<void> {
  const Onboarding({List<PageRouteInfo>? children})
      : super(
          Onboarding.name,
          initialChildren: children,
        );

  static const String name = 'Onboarding';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Settings]
class Settings extends PageRouteInfo<void> {
  const Settings({List<PageRouteInfo>? children})
      : super(
          Settings.name,
          initialChildren: children,
        );

  static const String name = 'Settings';

  static const PageInfo<void> page = PageInfo<void>(name);
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
