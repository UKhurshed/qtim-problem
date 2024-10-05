import 'package:flutter/material.dart';
import 'package:qtim_problem/core/utils/utils.dart';
import 'package:qtim_problem/core/widgets/widgets.dart';
import 'package:qtim_problem/screens/basket/widgets/basket_sliver_app_bar.dart';
import 'package:ui_kit/gen/assets.gen.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({super.key});

  static const routeName = 'basket';

  @override
  Widget build(BuildContext context) {
    return const _BasketView();
  }
}

class _BasketView extends StatelessWidget {
  const _BasketView();

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const BasketSliverAppBar(),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Круассан с семгой и сыром с семгой и сыром',
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
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.close,
                                            size: 28,
                                          ),
                                        ),
                                      ],
                                    ),
                                    // const SizedBox(height: 8),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CounterPizza(
                                          minusBtnPressed: () {},
                                          plusBtnPressed: () {},
                                        ),
                                        Text(s.priceValueRUB(359),
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
                childCount: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CounterPizza extends StatelessWidget {
  const CounterPizza({
    super.key,
    required this.plusBtnPressed,
    required this.minusBtnPressed,
  });

  final VoidCallback plusBtnPressed;
  final VoidCallback minusBtnPressed;

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
              '1',
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
