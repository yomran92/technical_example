import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_test/core/config/theme.dart';
import '../config/styles.dart';
import 'app_button.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({
    Key? key,
    this.entity,
    this.actionTitle,
    this.onAction,
    this.topMargin,
  }) : super(key: key);
  final String? entity;
  final String? actionTitle;
  final Function()? onAction;
  final double? topMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: topMargin ?? 0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 150.w,
            height: 150.h,
            child: Icon(Icons.error_outline)
          ),
          CommonSizes.v25,
          Text(
           "Error happened",
            textAlign: TextAlign.center,
            style: appTheme.textTheme.displayMedium,
          ),
          CommonSizes.v35,
          if (onAction != null)
            AppButton(
              onTap: onAction!,
              content: Text(
                actionTitle ?? 'restart',
              ),
            ),
        ],
      ),
    );
  }
}
