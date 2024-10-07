import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qtim_problem/core/utils/utils.dart';
import 'package:repository/repository.dart';

class ProductMainSectionView extends ConsumerStatefulWidget {
  const ProductMainSectionView({
    super.key,
    required this.productId,
  });

  final int productId;

  @override
  ConsumerState<ProductMainSectionView> createState() =>
      _ProductMainSectionViewState();
}

class _ProductMainSectionViewState
    extends ConsumerState<ProductMainSectionView> {
  final Map<int, Widget> pizzasSizeTabs = const <int, Widget>{
    0: Text("Маленькая"),
    1: Text("Средняя"),
    2: Text("Большая")
  };

  final Map<int, Widget> pizzasTypeTabs = const <int, Widget>{
    0: Text("Традиционное тесто"),
    1: Text("Тонкое тесто"),
  };

  int pizzasSizeValue = 0;
  int pizzasTypeValue = 0;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final menu = ref.watch(getMenuByIdProvider(widget.productId)).value;
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Text(
              'Римская пицца цыпленок с соусом песто с соусом песто',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 16),
            Text(
              s.productDescription,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: const Color(0xFF999999)),
            ),
            const SizedBox(height: 16),
            CupertinoSlidingSegmentedControl<int>(
              groupValue: pizzasSizeValue,
              children: pizzasSizeTabs,
              padding: const EdgeInsets.all(6),
              onValueChanged: (value) {
                setState(() {
                  pizzasSizeValue = value ?? 0;
                });
              },
            ),
            const SizedBox(height: 16),
            CupertinoSlidingSegmentedControl<int>(
              groupValue: pizzasTypeValue,
              children: pizzasTypeTabs,
              padding: const EdgeInsets.all(6),
              onValueChanged: (value) {
                setState(() {
                  pizzasTypeValue = value ?? 0;
                });
              },
            ),
            const SizedBox(height: 32),
            FilledButton(
              onPressed: () {
                if (menu != null) {
                  ref.watch(
                    basketItemInsertProvider(
                      BasketItemObject(
                        productId: widget.productId,
                        name: menu.name,
                        price: menu.price,
                        count: 1,
                        totalPrice: menu.price,
                      ),
                    ).notifier,
                  );
                }
              },
              style: FilledButton.styleFrom(
                fixedSize: const Size.fromHeight(44),
                backgroundColor: const Color(0xFFE1251B),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: Text(
                s.addToBasketFor(699),
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
