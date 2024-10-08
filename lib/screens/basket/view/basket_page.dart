import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qtim_problem/core/utils/utils.dart';
import 'package:qtim_problem/core/widgets/widgets.dart';
import 'package:qtim_problem/screens/basket/widgets/widgets.dart';
import 'package:repository/repository.dart';
import 'package:ui_kit/gen/assets.gen.dart';

//Экран Корзина
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
        isBasketEmpty ? 0.0 : _getTotalPrice(basketList.value ?? []);

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
              _ => const BasketSliverListSkeletonView()
            },
            isBasketListEmpty
                ? const SliverToBoxAdapter()
                : BasketFooterTotalPrice(totalPrice: totalPrice),
          ],
        ),
      ),
    );
  }

  double _getTotalPrice(List<BasketItemObject> items) {
    double totalPrice = 0.0;
    for (final item in items) {
      totalPrice += item.count * item.price;
    }
    return totalPrice;
  }
}
