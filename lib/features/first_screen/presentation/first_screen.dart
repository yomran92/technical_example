import 'dart:async';
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_test/core/widget/app_image.dart';

import '../../../core/config/assets.dart';
import '../../../core/config/styles.dart';
import '../../../core/config/theme.dart';
import '../../../core/feature/presentation/base_controller.dart';
import '../../../core/navigation_service.dart';
import '../../../core/widget/app_text_widget.dart';
import 'widget/first_screen_controller.dart';

@RoutePage()
class FirstScreen extends HookWidget {
  FirstScreen({required this.yourNameText, Key? key})
      : super(
          key: key,
        ) {
    // sl<SplashBloc>().add(SplashInitEvent());
  }

  final String yourNameText;

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      return null;
    }, const []);

    final controller = Controller.getInstance(
      instance: FirstScreenController(),
    );

    return SafeArea(
      child: Scaffold(
          backgroundColor: Styles.FontColorWhite,
          appBar: AppBar(
              backgroundColor: Styles.colorPrimary,
              leading: TextButton(
                onPressed: () => NavigationService.of(context).pop(),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  fixedSize: Size(20.w, 25.h),
                  alignment: AlignmentDirectional.center,
                ),
                child:   AppImage(
                  path: Assets.backIconSVG,
                  type: ImageType.asset,
                ),
              ),
              title: Text("Animations",
                  style: appTheme.textTheme.titleMedium?.copyWith(
                      fontSize: Styles.fontSize20PX,
                      color: Styles.colorTextWhite,
                      fontWeight: FontWeight.w400))),
          body: SingleChildScrollView(
              child: Column(children: [
            CommonSizes.v20,
            AppTextWidget(yourNameText,
                style: appTheme.textTheme.titleMedium?.copyWith(
                    fontSize: Styles.fontSize20PX,
                    color: Styles.FontColorBlack,
                    fontWeight: FontWeight.w400)),
            CommonSizes.v20,
            ValueListenableBuilder<BoxDecoration>(
              valueListenable: controller.boxDecoration,
              builder: (context, value, child) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: controller.boxDecoration.value,
                  height: 355.w,
                  width: 355.w,
                );
              },
            ),
            CommonSizes.v130,
            SizedBox(
                height: 70.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        controller.callFuntion(0);
                      },
                      child: Container(
                          width: 70.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Styles.blueDarkColor,
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        controller.callFuntion(1);
                      },
                      child: Container(
                        width: 70.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Styles.bluelightColor,
                          borderRadius: BorderRadius.all(Radius.circular(
                            15.r,
                          )),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.callFuntion(2);
                      },
                      child: Container(
                        width: 70.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Styles.ColorDarkRed,
                        ),
                      ),
                    )
                  ],
                )),
            CommonSizes.v20
          ]))),
    );
  }
}
