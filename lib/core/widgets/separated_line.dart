
import 'package:flutter/material.dart';

class SeparateLine extends StatelessWidget {
  const SeparateLine({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Color(0xFFF4F4F4),
      ),
      child: SizedBox(
        height: 1,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
