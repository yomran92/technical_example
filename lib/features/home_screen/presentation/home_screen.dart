import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_test/core/config/assets.dart';
import 'package:technical_test/core/config/theme.dart';
import 'package:technical_test/core/widget/app_image.dart';
import 'package:technical_test/features/home_screen/presentation/widget/home_screen_controller.dart';

import '../../../core/config/styles.dart';
import '../../../core/feature/presentation/base_controller.dart';
import '../../../core/navigation_service.dart';
import '../../../core/routing/app_router.dart';
import '../../../core/widget/app_button.dart';
import '../../../core/widget/app_text_button.dart';
import '../../../core/widget/text_field.dart';

@RoutePage()
class HomeScreen extends HookWidget {
  HomeScreen({Key? key})
      : super(
          key: key,
        ) {
   }

  final _userInputTextFieldKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    final userInputTextController = useTextEditingController();



    return SafeArea(
        child: WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
          backgroundColor: Styles.FontColorWhite,
          appBar: AppBar(
            backgroundColor: Styles.colorPrimary,
            title: Text(
              "Home",
              style: appTheme.textTheme.titleMedium?.copyWith(
                color: Styles.colorTextWhite,
              ),
            ),
          ),
          body: GestureDetector(
            onTap: (){
              FocusManager.instance.primaryFocus?.unfocus();

            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CommonSizes.v10,
                  AppTextField(
                    constraints:BoxConstraints(),
                    validationKey: _userInputTextFieldKey,
                    name: 'user input text field',
                    controller: userInputTextController,
                    type: AppTextFieldType.text,
                    hint: 'user input text field',
                      isOutlanedDecoration:true  ,
                  ),
                  CommonSizes.v10,
                  ValueListenableBuilder(
                      valueListenable: userInputTextController,
                      builder: (context, value, child) {
                        return Center(
                          child: Text(
                            userInputTextController.text.isEmpty
                                ? "Your Name"
                                : userInputTextController.text,
                            style: appTheme.textTheme.displayLarge,
                          ),
                        );
                      }),
                  Expanded(child: Container()),
                  AppButton(
                      onTap: () {
                        FocusManager.instance.primaryFocus?.unfocus();

                        userInputTextController.text = '';
                      },
                      content: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppImage(
                              path: Assets.clearTextSVG, type: ImageType.asset),
                          CommonSizes.h10,
                          Text("clear text",
                              style: appTheme.textTheme.headlineMedium?.copyWith(
                                  fontSize: Styles.fontSize13PX,
                                  color: Styles.ColorDarkRed,
                                  fontWeight: FontWeight.w400))
                        ],
                      )),
                  CommonSizes.v20,
                  AppButton(
                      onTap: () {
                        FocusManager.instance.primaryFocus?.unfocus();

                        NavigationService.of(context).navigateTo(
                          FirstScreenRoute(
                              yourNameText: userInputTextController.text.isEmpty
                                  ? "Your Name"
                                  : userInputTextController.text),
                        );
                      },
                      fixedSize: Size(376.w, 57.h),
                      color: Styles.blueDarkColor,
                      content: Text("go to first page  ",
                          style: appTheme.textTheme.titleMedium?.copyWith(
                              fontSize: Styles.fontSize20PX,
                              color: Styles.colorTextWhite,
                              fontWeight: FontWeight.w400))),
                  CommonSizes.v20,
                  AppButton(
                      onTap: () {
                        FocusManager.instance.primaryFocus?.unfocus();

                        NavigationService.of(context).navigateTo(
                          SecondeScreenRoute(),
                        );
                      },
                      fixedSize: Size(376.w, 57.h),
                      color: Styles.bluelightColor,
                      content: Text("go to  second page",
                          style: appTheme.textTheme.titleMedium?.copyWith(
                              fontSize: Styles.fontSize20PX,
                              color: Styles.colorTextWhite,
                              fontWeight: FontWeight.w400))),
                  CommonSizes.v35,
                ],
              ),
            ),
          )),
    ));
  }

  void _handleLoaded(
    BuildContext context, {
    AnimationController? animationController,
  }) {
    // NavigationService.of(context).clearAllAndPushNamed(
    //   FirstPageScreenR
    //
    // );
  }
}

// void _handleError(BuildContext context, SplashError state) {
//   AppDialogs.showRetryDialog(
//     context: context,
//     content: state.message,
//     retryCallBack: () {
//       sl<SplashBloc>().add(SplashInitEvent(
//         context,
//       ));
//     },
//   );
// }
