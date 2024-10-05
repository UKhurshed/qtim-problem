import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qtim_problem/core/widgets/widgets.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  static const routeName = 'product';

  @override
  Widget build(BuildContext context) {
    return const _ProductView();
  }
}

class _ProductView extends StatefulWidget {
  const _ProductView();

  @override
  State<_ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<_ProductView> {
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
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
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
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    Image.asset(
                      'assets/header_pizza.png',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 10,
                      left: 16,
                      child: SmallRoundedButton(
                        onTap: () {},
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
                      'Римское тесто, Курица, Помидоры черри, Сыр сливочный, Сыр Моцарелла, Соус песто, Салат руккола, Чеснок',
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
                    // const Spacer(),
                    FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        fixedSize: const Size.fromHeight(44),
                        backgroundColor: const Color(0xFFE1251B),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Text(
                        'Добавить за 699\u20BD',
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


