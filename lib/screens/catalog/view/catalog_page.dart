import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  static const routeName = 'catalog';

  @override
  Widget build(BuildContext context) {
    return const _CatalogView();
  }
}

class _CatalogView extends StatelessWidget {
  const _CatalogView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Проспект Мира 183к2',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(width: 8),
            const Icon(
              Icons.keyboard_arrow_down,
              size: 15,
              color: Colors.black,
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 16),
              SizedBox(
                height: 190,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: index == 0
                          ? const EdgeInsets.only(left: 16)
                          : index == 4
                              ? const EdgeInsets.only(right: 16)
                              : EdgeInsets.zero,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/discount.jpg',
                          width: 360,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 16),
                  itemCount: 3,
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 1.3),
                  itemBuilder: (context, index) {
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xFFF4F4F4),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 15,
                              left: 16,
                              child: Text(
                                'Пицца',
                                style:
                                    Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                            Positioned(
                              bottom: -60,
                              right: -50,
                              child: SvgPicture.asset(
                                'assets/food 2.svg',
                                height: 180,
                                width: 200,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: 7,
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
