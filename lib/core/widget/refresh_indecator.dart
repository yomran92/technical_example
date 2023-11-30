import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:technical_test/core/config/styles.dart';
import 'package:technical_test/core/config/theme.dart';

class AppRefreshIndicator extends HookWidget {
  const AppRefreshIndicator({
    super.key,
    required this.child,
    required this.onRefresh,
    this.loading = false,
    this.color,
  });

  final Color? color;
  final Widget child;
  final bool loading;
  final Future Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      color: Styles.colorPrimary,
      backgroundColor: appTheme.scaffoldBackgroundColor,
      child: Stack(
        children: [
          if (loading)
            const Positioned(
              top: 40,
              right: 0,
              left: 0,
              child: Center(
                child: RefreshProgressIndicator(
                  strokeWidth: 4,
                  // backgroundColor: Colors.red,
                ),
              ),
            ),
          Positioned.fill(
            child: child,
          ),
        ],
      ),
    );
  }
}
