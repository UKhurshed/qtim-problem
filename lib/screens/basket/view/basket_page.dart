import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qtim_problem/core/utils/utils.dart';
import 'package:qtim_problem/core/widgets/widgets.dart';
import 'package:qtim_problem/screens/basket/widgets/widgets.dart';
import 'package:repository/repository.dart';
import 'package:ui_kit/gen/assets.gen.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({super.key});

  static const routeName = 'basket';

  @override
  Widget build(BuildContext context) {
    return const _BasketView();
  }
}

class _BasketView extends ConsumerWidget {
  const _BasketView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final basketList = ref.watch(basketItemListProvider);

    final isBasketEmpty = basketList.value?.isEmpty ?? true;

    final totalPrice =
        isBasketEmpty ? 0.0 : basketList.value?.first.totalPrice ?? 0.0;

    final isBasketListEmpty = isBasketEmpty && totalPrice == 0.0;

    final s = S.of(context);
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const BasketSliverAppBar(),
            switch (basketList) {
              AsyncData(:final value) => value.isEmpty
                  ? SliverToBoxAdapter(
                      child: Center(child: Assets.images.noData.image()),
                    )
                  : BasketProductList(basketItems: value),
              AsyncError(:final error) => SliverToBoxAdapter(
                  child: Text(
                    s.errorOccurred(error.toString()),
                  ),
                ),
              _ => SliverList(
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
                ),
            },
            isBasketListEmpty
                ? const SliverToBoxAdapter()
                : BasketFooterTotalPrice(totalPrice: totalPrice),
          ],
        ),
      ),
    );
  }
}
