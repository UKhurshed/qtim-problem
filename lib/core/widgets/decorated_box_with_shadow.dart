import 'package:flutter/material.dart';

class DecoratedBoxWithShadow extends StatelessWidget {
  const DecoratedBoxWithShadow({
    super.key,
    required this.backgroundColor,
    required this.borderRadius,
    required this.child,
    this.isShadowAvailable = false,
  });

  final Color backgroundColor;
  final Widget child;
  final double borderRadius;
  final bool isShadowAvailable;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: backgroundColor,
        boxShadow: isShadowAvailable
            ? [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  spreadRadius: 0,
                  blurRadius: 30,
                  offset: const Offset(4, 4),
                ),
              ]
            : [],
      ),
      child: child,
    );
  }
}
