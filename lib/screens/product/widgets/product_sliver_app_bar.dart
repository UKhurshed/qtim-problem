import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qtim_problem/core/widgets/widgets.dart';
import 'package:ui_kit/ui_kit.dart';

class ProductSliverAppBar extends StatelessWidget {
  const ProductSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      pinned: true,
      centerTitle: false,
      stretch: true,
      expandedHeight: 250,
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Assets.images.headerPizza.image(
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 10,
              left: 16,
              child: SmallRoundedButton(
                onTap: () {
                  context.pop();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
