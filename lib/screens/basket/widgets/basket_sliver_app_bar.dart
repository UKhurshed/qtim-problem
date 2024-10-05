import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qtim_problem/core/utils/utils.dart';
import 'package:qtim_problem/core/widgets/widgets.dart';
import 'package:ui_kit/gen/assets.gen.dart';

class BasketSliverAppBar extends StatelessWidget {
  const BasketSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xFFFAFAFA),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              s.basket,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Positioned(
              right: 16,
              child: SmallRoundedButton(
                onTap: () {},
                child: Assets.images.clear.svg(),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  color: Color(0xFFF4F4F4),
                ),
                child: SizedBox(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
