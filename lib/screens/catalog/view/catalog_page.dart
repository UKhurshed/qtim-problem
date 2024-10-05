import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qtim_problem/core/router/app_routes.dart';
import 'package:qtim_problem/core/widgets/decorated_box_with_shadow.dart';
import 'package:qtim_problem/core/widgets/defailt_shimmer.dart';
import 'package:qtim_problem/screens/catalog/model/catalog_model.dart';
import 'package:qtim_problem/screens/catalog/provider/catalog_provider.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  static const routeName = 'catalog';

  @override
  Widget build(BuildContext context) {
    return const _CatalogView();
  }
}

class _CatalogView extends ConsumerWidget {
  const _CatalogView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (context, ref, child) {
        final AsyncValue<CatalogModel> getCatalog =
            ref.watch(getCatalogProvider);

        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Проспект Мира 183к2',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontWeight: FontWeight.w600),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 190,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: index == 0
                              ? const EdgeInsets.only(left: 16)
                              : index == 2
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
                  switch (getCatalog) {
                    AsyncData(:final value) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 8,
                                  crossAxisSpacing: 8,
                                  childAspectRatio: 1.3),
                          itemBuilder: (context, index) {
                            final item = value.catalog[index];
                            return InkWell(
                              onTap: () {
                                HapticFeedback.selectionClick();
                                DetailCatalogRoute(catalogID: item.id - 1).push(context);
                              },
                              child: DecoratedBoxWithShadow(
                                backgroundColor: const Color(0xFFF4F4F4),
                                borderRadius: 12,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 15,
                                        left: 16,
                                        child: Text(
                                          item.name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: -60,
                                        right: -50,
                                        child: SvgPicture.asset(
                                          'assets/food.svg',
                                          height: 180,
                                          width: 200,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: value.catalog.length,
                        ),
                      ),
                    AsyncError(:final error) => Center(
                        child: Text(
                          'Error occurred: $error',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    _ => const CatalogItemSkeletonView(),
                  },
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class CatalogItemSkeletonView extends StatelessWidget {
  const CatalogItemSkeletonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1.3,
        ),
        itemBuilder: (context, index) {
          return const DefaultShimmer(
            child: DecoratedBoxWithShadow(
              backgroundColor: Colors.grey,
              borderRadius: 12,
              child: SizedBox(),
            ),
          );
        },
        itemCount: 6,
      ),
    );
  }
}
