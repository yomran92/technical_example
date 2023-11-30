import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:technical_test/core/config/assets.dart';
import 'package:technical_test/core/config/styles.dart';
import 'package:technical_test/core/widget/app_image.dart';
import 'package:technical_test/features/splash_screen/presentation/widget/splash_screen_controller.dart';

import '../../../core/feature/presentation/base_controller.dart';
import '../../../core/navigation_service.dart';
import '../../../core/routing/app_router.dart';

@RoutePage()
class SplashScreen extends HookWidget {
  SplashScreen({Key? key})
      : super(
          key: key,
        ) {
    // sl<SplashBloc>().add(SplashInitEvent());
  }

  @override
  Widget build(BuildContext context) {
    final controller = Controller.getInstance(
      instance: SplashScreenController(),
    );

    return SafeArea(
      child: WillPopScope(
        onWillPop: () => Future.value(false),
        child: Scaffold(
            backgroundColor: Styles.FontColorWhite,
            body: Center(
              child: ValueListenableBuilder<bool>(
                valueListenable: controller.isCountingDownNotifier,
                builder: (context, value, child) {
                  if (value) {
                    NavigationService.of(context).clearAllAndPushNamed(
                      HomeScreenRoute(),
                    );
                  }
                  return AppImage(path: Assets.logoSVG, type: ImageType.asset);
                },
              ),
            )),
      ),
    );
  }
}
