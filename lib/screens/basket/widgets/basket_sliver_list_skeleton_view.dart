import 'package:flutter/material.dart';
import 'package:qtim_problem/core/widgets/widgets.dart';

//Shimmer списка корзины, показывается во время Loading state-a
class BasketSliverListSkeletonView extends StatelessWidget {
  const BasketSliverListSkeletonView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            child: DefaultShimmer(
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.grey),
                child: SizedBox(
                  height: 92,
                ),
              ),
            ),
          );
        },
        childCount: 6,
      ),
    );
  }
}
