import 'package:flutter/material.dart';
import 'package:qtim_problem/core/widgets/widgets.dart';

class SmallRoundedButton extends StatelessWidget {
  const SmallRoundedButton({
    super.key,
    required this.onTap,
    this.child,
  });

  final VoidCallback onTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: DecoratedBoxWithShadow(
        backgroundColor: Colors.white,
        borderRadius: 8,
        child: SizedBox(
          height: 44,
          width: 44,
          child: Center(
            child: child ??
                const Icon(
                  Icons.arrow_back_ios,
                  size: 18,
                  color: Colors.black,
                ),
          ),
        ),
      ),
    );
  }
}
