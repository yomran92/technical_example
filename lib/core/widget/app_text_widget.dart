import 'package:flutter/material.dart';

/// this should be used to show text instead of [Text] widget
/// to fix language direction
class AppTextWidget extends StatelessWidget {
  const AppTextWidget(this.text,
      {Key? key,
      this.style,
      this.maxLines,
      this.textDirection,
      this.overflow,
      this.textAlign,
      this.textKey})
      : super(key: key);

  final TextStyle? style;
  final int? maxLines;
  final TextDirection? textDirection;
  final TextOverflow? overflow;
  final String text;
  final TextAlign? textAlign;
  final Key? textKey;

  @override
  Widget build(BuildContext context) {
    return Text(
      key: textKey,
      text,
      style: style,
      maxLines: maxLines,
      textDirection: textDirection ?? TextDirection.ltr,
      overflow: overflow ?? TextOverflow.ellipsis,
      textAlign: textAlign,
    );
  }
}
