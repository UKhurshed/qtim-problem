import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qtim_problem/core/widgets/leading_back_button.dart';
import 'package:qtim_problem/screens/product/view/product_page.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({super.key});

  static const routeName = 'basket';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      // appBar: BasketAppBar(),
      appBar: const EmptyAppBar(
        systemUiOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xFFFAFAFA),
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: const Color(0xFFFAFAFA),
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SmallRoundedButton(
                            onTap: () {},
                          ),
                          Text(
                            'Корзина',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          SmallRoundedButton(
                            onTap: () {},
                            child: SvgPicture.asset('assets/trash.svg'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        color: Color(0xFFF4F4F4),
                      ),
                      child: SizedBox(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // const SizedBox(height: 24),
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
                                child: Image.asset(
                                  'assets/header.png',
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
                                        Text(
                                          '359\u20BD',
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
              child: SvgPicture.asset('assets/minus.svg'),
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
                child: SvgPicture.asset('assets/plus.svg'))
          ],
        ),
      ),
    );
  }
}

class BasketAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BasketAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFAFAFA),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Color(0xFFFAFAFA),
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      centerTitle: true,
      leadingWidth: 60,
      leading: SmallRoundedButton(
        onTap: () {},
      ),
      title: Text(
        'Корзина',
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}
