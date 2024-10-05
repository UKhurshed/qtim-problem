import 'package:flutter/material.dart';

class ThinDoughHorizontalScrollview extends StatelessWidget {
  const ThinDoughHorizontalScrollview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: index == 0
                ? const EdgeInsets.only(left: 16)
                : index == 4
                ? const EdgeInsets.only(right: 16)
                : EdgeInsets.zero,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(33),
                  color: const Color(0xFFF4F4F4)),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16),
                child: Center(
                  child: Text(
                    'Тонкое тесто',
                    style:
                    Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) =>
        const SizedBox(width: 5),
        itemCount: 5,
      ),
    );
  }
}
