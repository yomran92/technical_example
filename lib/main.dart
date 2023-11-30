import 'dart:async';

 import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:provider/provider.dart';

import 'core/config/theme.dart';
import 'core/navigation_service.dart';
import 'core/routing/app_router.dart';
import 'injection_container.dart';
Future<void> main() async {
  ///Running app scope
  {
    runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();




      ///UI settings scope
      {
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

        SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ));
      }


      initInjection();
      runApp(HookedBlocConfigProvider(
        injector: () => sl.get,
        builderCondition: (state) => state != null, // Global build condition
        listenerCondition: (state) => state != null, // Global listen condition
        child:

        App(),
       ),
      );
    }, (error, stackTrace) {

    });
  }
}

AppRouter? appRouter;

class App extends HookWidget {
  App({Key? key}) : super(key: key);


  static ThemeData get theme => Theme.of(
    navigatorKey.currentContext!,
  );


  static final navigatorKey = GlobalKey<NavigatorState>();

    @override
  Widget build(BuildContext context) {
    ///Register app-lifecycle listener
    // useOnAppLifecycleStateChange(appLifecycleListener);

    ///

    appRouter ??= AppRouter(navigatorKey);

    return  ScreenUtilInit(
        designSize: const Size(428 ,926),
        useInheritedMediaQuery: true,
        builder: (BuildContext context, Widget? child) {
          return   MaterialApp.router(
              debugShowCheckedModeBanner:false,
                routerDelegate: appRouter!.delegate(
                navigatorObservers: () => [
                  NavigationService.navigatorObserver,

                ],
              ),




              routeInformationParser: appRouter!.defaultRouteParser(),
               theme: appTheme,


          );
        },

    );
  }
}
