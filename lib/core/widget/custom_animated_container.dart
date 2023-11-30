import 'package:flutter/material.dart';

class CustomAnimatedContainer extends StatelessWidget {
  const CustomAnimatedContainer({
    required this.r,
    this.color,
    this.child,
    this.padding,
    this.margin,
    this.alignment,
    this.boxShadow,
    Key? key,
  }) : super(key: key);

  final double r;
  final Color? color;
  final Widget? child;
  final EdgeInsets? padding;
  final EdgeInsetsGeometry? margin;
  final AlignmentGeometry? alignment;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      alignment: alignment,
      height: r,
      width: r,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(r),
        ),
        boxShadow: boxShadow,
      ),
      child: Center(child: child),
    );
  }
}
