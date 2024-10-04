import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qtim_problem/core/widgets/widgets.dart';
import 'package:qtim_problem/screens/product/view/product_page.dart';

class DetailCatalogPage extends StatelessWidget {
  const DetailCatalogPage({super.key});

  static const routeName = 'detail-catalog';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: const EmptyAppBar(
        systemUiOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xFFE1251B),
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: 180,
            pinned: true,
            centerTitle: true,
            toolbarHeight: 0,
            backgroundColor: const Color(0xFFE1251B),
            flexibleSpace: FlexibleSpaceBar(
              background: DecoratedBox(
                decoration: const BoxDecoration(
                  color: Color(0xFFE1251B),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 32,
                        left: 16,
                        child: SmallRoundedButton(
                          onTap: () {},
                        ),
                      ),
                      Positioned(
                        top: 100,
                        left: 16,
                        child: Text(
                          'Пицца',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(color: Colors.white),
                        ),
                      ),
                      Positioned(
                        bottom: -20,
                        right: 0,
                        child: Image.asset('assets/part_pizza.png'),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(height: 24),
                SizedBox(
                  height: 40,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: index == 0
                            ? const EdgeInsets.only(left: 16)
                            : index == 4
                                ? const EdgeInsets.only(right: 16)
                                : EdgeInsets.zero,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(33),
                              color: const Color(0xFFF4F4F4)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Center(
                              child: Text(
                                'Тонкое тесто',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 5),
                    itemCount: 5,
                  ),
                ),
                const SizedBox(height: 24),
                const ThinDoughView(),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ThinDoughView extends StatelessWidget {
  const ThinDoughView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Тонкое тесто',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 16),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 0.8),
            itemBuilder: (context, index) {
              return DecoratedBoxWithShadow(
                  backgroundColor: const Color.fromRGBO(251, 251, 251, 1),
                  borderRadius: 12,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 36),
                          child: Image.asset('assets/peperoni.png'),
                        ),
                        const SizedBox(height: 8),
                        Expanded(
                          child: DecoratedBox(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Филадельфия с лососем и базилик...',
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '200 гр *',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                              color: const Color(0xFF999999),
                                            ),
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        'Выгода 100₽!',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                              color: const Color(0xFF608D42),
                                            ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '359\u20BD',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                      DecoratedBox(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0xFFF4F4F4),
                                        ),
                                        child: SizedBox(
                                          height: 42,
                                          width: 42,
                                          child: Center(
                                            child: SvgPicture.asset(
                                                'assets/plus_24.svg'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ));
            },
            itemCount: 5,
          ),
        ],
      ),
    );
  }
}
