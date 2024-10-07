import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qtim_problem/core/utils/utils.dart';
import 'package:repository/repository.dart';
import 'package:ui_kit/gen/assets.gen.dart';

//Виджет для показа списка продуктов корзины
class BasketProductList extends ConsumerWidget {
  const BasketProductList({
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
                                    ref.read(
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
                                _CounterProduct(
                                  productID: item.productId,
                                  count: item.count.toString(),
                                ),
                                Text(
                                  s.priceValueRUB(item.price.toInt()),
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

//Виджет нужен для управление количество продукта корзины
class _CounterProduct extends ConsumerWidget {
  const _CounterProduct({
    required this.count,
    required this.productID,
  });

  final String count;
  final int productID;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              onTap: () {
                ref.watch(
                  basketDecrementItemProvider(productID).notifier,
                );
              },
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
              onTap: () {
                ref.watch(
                  basketIncrementItemProvider(productID).notifier,
                );
              },
              child: Assets.images.plus.svg(),
            )
          ],
        ),
      ),
    );
  }
}
