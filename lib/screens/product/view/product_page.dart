import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:qtim_problem/core/router/app_routes.dart';
import 'package:qtim_problem/core/utils/utils.dart';
import 'package:qtim_problem/core/widgets/widgets.dart';
import 'package:repository/repository.dart';
import 'package:ui_kit/gen/assets.gen.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({
    super.key,
    required this.productId,
    required this.menuId,
  });

  static const routeName = 'product';

  final int productId;
  final int menuId;

  @override
  Widget build(BuildContext context) {
    return _ProductView(
      productId: productId,
    );
  }
}

class _ProductView extends ConsumerStatefulWidget {
  const _ProductView({
    required this.productId,
  });

  final int productId;

  @override
  ConsumerState<_ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends ConsumerState<_ProductView> {
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
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
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
            ),
            SliverToBoxAdapter(
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
                        if(menu != null) {
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
            )
          ],
        ),
      ),
    );
  }
}
