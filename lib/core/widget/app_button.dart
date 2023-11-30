import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_test/core/config/theme.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    this.onTap,
    required this.content,
    this.color,
    this.borderColor,
    this.radius,
    this.fixedSize,
    this.buttonKey
  }) : super(key: key);

  final Function()? onTap;
  final Widget content;
  final double? radius;
  final Color? color;
  final Color? borderColor;
  final Size? fixedSize;
  final Key? buttonKey;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        key: buttonKey,
        onPressed: onTap,
        style: appTheme.elevatedButtonTheme.style?.copyWith(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(radius??15.r)) ,
               ),
          ),
          side: borderColor == null
              ? null
              : MaterialStateProperty.all(BorderSide(color: borderColor!)),
          fixedSize:fixedSize == null ? 
          null: MaterialStateProperty.all(fixedSize!),
          padding:    MaterialStatePropertyAll(EdgeInsets.zero),
        ),
        child: content,
      ),
    );
  }
}

