import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qtim_problem/core/router/app_routes.dart';
import 'package:qtim_problem/core/utils/utils.dart';
import 'package:qtim_problem/core/widgets/widgets.dart';
import 'package:repository/repository.dart';
import 'package:ui_kit/gen/assets.gen.dart';

const _slierGridDelegate = SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 2,
  mainAxisSpacing: 8,
  crossAxisSpacing: 8,
  childAspectRatio: 0.8,
);

//Отображает список меню продуктов
class CatalogList extends ConsumerWidget {
  const CatalogList({
    super.key,
    required this.catalogID,
  });

  final int catalogID;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getCatalog = ref.watch(getCatalogByIdProvider(catalogID));

    final s = S.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            s.thinDough,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 16),
          switch (getCatalog) {
            AsyncData(:final value) => _MenuListView(
                element: value,
                productId: catalogID,
              ),
            AsyncError(:final error) => Center(
                child: Text('$error'),
              ),
            _ => const _MenuListSkeletonView()
          },
        ],
      ),
    );
  }
}

class _MenuListView extends StatelessWidget {
  const _MenuListView({
    required this.element,
    required this.productId,
  });

  final CatalogElement element;
  final int productId;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.8),
      itemBuilder: (context, index) {
        final item = element.menu[index];
        return DecoratedBoxWithShadow(
          backgroundColor: const Color.fromRGBO(251, 251, 251, 1),
          borderRadius: 12,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  child: Assets.images.peperoni.image(),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: DecoratedBox(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8),
                          Text(
                            item.name,
                            textAlign: TextAlign.start,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontSize: 18),
                          ),
                          const SizedBox(height: 4),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                item.weight,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: const Color(0xFF999999),
                                    ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                item.extra_information ?? "",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: const Color(0xFF608D42),
                                    ),
                              )
                            ],
                          ),
                          const SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '${item.price}\u20BD',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                              InkWell(
                                onTap: () {
                                  ProductRoute(
                                    productId: productId,
                                    menuId: item.id,
                                  ).push(context);
                                },
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFF4F4F4),
                                  ),
                                  child: SizedBox(
                                    height: 42,
                                    width: 42,
                                    child: Center(
                                      child: Assets.images.redPlus.svg(),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: element.menu.length,
    );
  }
}

class _MenuListSkeletonView extends StatelessWidget {
  const _MenuListSkeletonView();

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: _slierGridDelegate,
      itemBuilder: (context, index) {
        return DecoratedBoxWithShadow(
          backgroundColor: const Color.fromRGBO(251, 251, 251, 1),
          borderRadius: 12,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  child: Assets.images.peperoni.image(),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DefaultShimmer(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const SizedBox(
                                height: 25,
                                width: 140,
                              ),
                            ),
                          ),
                          const Spacer(),
                          DefaultShimmer(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const SizedBox(
                                height: 20,
                                width: 100,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                s.priceValueRUB(500),
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFF4F4F4),
                                ),
                                child: SizedBox(
                                  height: 42,
                                  width: 42,
                                  child: Center(
                                    child: Assets.images.redPlus.svg(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: 6,
    );
  }
}
