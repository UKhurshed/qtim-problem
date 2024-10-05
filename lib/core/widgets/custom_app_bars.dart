import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmptyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const EmptyAppBar({
    super.key,
    this.backgroundColor = Colors.white,
  });

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => Size.zero;
}

class RedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RedAppBar({
    super.key,
    this.backgroundColor = Colors.white,
    required this.systemUiOverlayStyle,
  });

  final Color backgroundColor;
  final SystemUiOverlayStyle systemUiOverlayStyle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      systemOverlayStyle: systemUiOverlayStyle,
    );
  }

  @override
  Size get preferredSize => Size.zero;
}
