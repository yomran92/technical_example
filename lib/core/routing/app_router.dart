import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/first_screen/presentation/first_screen.dart';
import '../../features/home_screen/presentation/home_screen.dart';
import '../../features/seconde_screen/presentation/seconde_screen.dart';
import '../../features/splash_screen/presentation/splash_screen.dart';

part 'app_router.gr.dart';

// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
/// To add new route
/// 1- add your page as other pages are added
/// 2- run the following command in terminal:
///  flutter packages pub run build_runner build --delete-conflicting-outputs
///
final barrierColor = Colors.white.withAlpha(50);

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route,Screen',
)
// extend the generated private router
class AppRouter extends _$AppRouter {
  AppRouter(GlobalKey<NavigatorState> navigatorKey) : super(navigatorKey: navigatorKey);

  @override
  RouteType get defaultRouteType => RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashScreenRoute.page, path: '/'),
    CustomRoute(
        page: HomeScreenRoute.page, transitionsBuilder: TransitionsBuilders.fadeIn),
  CustomRoute(
        page: FirstScreenRoute.page, transitionsBuilder: TransitionsBuilders.fadeIn),

     CustomRoute(
        page: SecondeScreenRoute.page, transitionsBuilder: TransitionsBuilders.fadeIn),

  ];
}
