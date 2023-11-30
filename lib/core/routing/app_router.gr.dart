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
    FirstScreenRoute.name: (routeData) {
      final args = routeData.argsAs<FirstScreenRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FirstScreen(
          yourNameText: args.yourNameText,
          key: args.key,
        ),
      );
    },
    HomeScreenRoute.name: (routeData) {
      final args = routeData.argsAs<HomeScreenRouteArgs>(
          orElse: () => const HomeScreenRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeScreen(key: args.key),
      );
    },
    SecondeScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SecondeScreenRouteArgs>(
          orElse: () => const SecondeScreenRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SecondeScreen(key: args.key),
      );
    },
    SplashScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SplashScreenRouteArgs>(
          orElse: () => const SplashScreenRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SplashScreen(key: args.key),
      );
    },
  };
}

/// generated route for
/// [FirstScreen]
class FirstScreenRoute extends PageRouteInfo<FirstScreenRouteArgs> {
  FirstScreenRoute({
    required String yourNameText,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          FirstScreenRoute.name,
          args: FirstScreenRouteArgs(
            yourNameText: yourNameText,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'FirstScreenRoute';

  static const PageInfo<FirstScreenRouteArgs> page =
      PageInfo<FirstScreenRouteArgs>(name);
}

class FirstScreenRouteArgs {
  const FirstScreenRouteArgs({
    required this.yourNameText,
    this.key,
  });

  final String yourNameText;

  final Key? key;

  @override
  String toString() {
    return 'FirstScreenRouteArgs{yourNameText: $yourNameText, key: $key}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeScreenRoute extends PageRouteInfo<HomeScreenRouteArgs> {
  HomeScreenRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HomeScreenRoute.name,
          args: HomeScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const PageInfo<HomeScreenRouteArgs> page =
      PageInfo<HomeScreenRouteArgs>(name);
}

class HomeScreenRouteArgs {
  const HomeScreenRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SecondeScreen]
class SecondeScreenRoute extends PageRouteInfo<SecondeScreenRouteArgs> {
  SecondeScreenRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SecondeScreenRoute.name,
          args: SecondeScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SecondeScreenRoute';

  static const PageInfo<SecondeScreenRouteArgs> page =
      PageInfo<SecondeScreenRouteArgs>(name);
}

class SecondeScreenRouteArgs {
  const SecondeScreenRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SecondeScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SplashScreen]
class SplashScreenRoute extends PageRouteInfo<SplashScreenRouteArgs> {
  SplashScreenRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SplashScreenRoute.name,
          args: SplashScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const PageInfo<SplashScreenRouteArgs> page =
      PageInfo<SplashScreenRouteArgs>(name);
}

class SplashScreenRouteArgs {
  const SplashScreenRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SplashScreenRouteArgs{key: $key}';
  }
}
