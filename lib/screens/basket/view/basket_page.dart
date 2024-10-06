import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qtim_problem/core/utils/utils.dart';
import 'package:qtim_problem/core/widgets/widgets.dart';
import 'package:qtim_problem/screens/basket/widgets/basket_sliver_app_bar.dart';
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
                  : BasketItemList(basketItems: value),
              AsyncError(:final error) => Text(
                  s.errorOccurred(error.toString()),
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
          ],
        ),
      ),
    );
  }
}

class BasketItemList extends ConsumerWidget {
  const BasketItemList({
    super.key,
    required this.basketItems,
  });

  final List<BasketItemObject> basketItems;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = S.of(context);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final item = basketItems[index];
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16,
            ),
            child: SizedBox(
              height: 92,
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Assets.images.headerPizza.image(
                          height: 84,
                          width: 118,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    item.name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium
                                        ?.copyWith(
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                IconButton(
                                  onPressed: () {
                                    ref.watch(
                                      basketDeleteItemProvider(item.productId)
                                          .notifier,
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.close,
                                    size: 28,
                                  ),
                                ),
                              ],
                            ),
                            // const SizedBox(height: 8),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CounterPizza(
                                  minusBtnPressed: () {
                                    ref.watch(
                                      basketDecrementItemProvider(
                                              item.productId)
                                          .notifier,
                                    );
                                  },
                                  plusBtnPressed: () {
                                    ref.watch(
                                      basketIncrementItemProvider(
                                              item.productId)
                                          .notifier,
                                    );
                                  },
                                  count: item.count.toString(),
                                ),
                                Text(
                                  s.priceValueRUB(359),
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                        fontWeight: FontWeight.w700,
                                      ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
        childCount: basketItems.length,
      ),
    );
  }
}

class CounterPizza extends StatelessWidget {
  const CounterPizza({
    super.key,
    required this.plusBtnPressed,
    required this.minusBtnPressed,
    required this.count,
  });

  final VoidCallback plusBtnPressed;
  final VoidCallback minusBtnPressed;
  final String count;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFFF4F4F4),
      ),
      child: SizedBox(
        height: 44,
        width: 95,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: minusBtnPressed,
              child: Assets.images.minus.svg(),
            ),
            Text(
              count,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
            InkWell(
              onTap: plusBtnPressed,
              child: Assets.images.plus.svg(),
            )
          ],
        ),
      ),
    );
  }
}
