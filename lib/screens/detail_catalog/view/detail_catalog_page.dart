import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:qtim_problem/core/utils/utils.dart';
import 'package:qtim_problem/core/widgets/widgets.dart';
import 'package:qtim_problem/screens/catalog/model/catalog_model.dart';
import 'package:qtim_problem/screens/catalog/provider/catalog_provider.dart';
import 'package:qtim_problem/screens/detail_catalog/widgets/widgets.dart';
import 'package:ui_kit/gen/assets.gen.dart';

class DetailCatalogPage extends StatelessWidget {
  const DetailCatalogPage({
    super.key,
    required this.catalogID,
  });

  final int catalogID;

  static const routeName = 'detail-catalog';

  @override
  Widget build(BuildContext context) {
    return _DetailCatalogView(
      catalogID: catalogID,
    );
  }
}

class _DetailCatalogView extends StatelessWidget {
  const _DetailCatalogView({
    required this.catalogID,
  });

  final int catalogID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RedAppBar(
        systemUiOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xFFE1251B),
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          _DetailCatalogSliverAppBar(catalogID: catalogID),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(height: 24),
                const ThinDoughHorizontalScrollview(),
                const SizedBox(height: 24),
                ThinDoughList(catalogID: catalogID),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailCatalogSliverAppBar extends ConsumerWidget {
  const _DetailCatalogSliverAppBar({
    required this.catalogID,
  });

  final int catalogID;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<CatalogModel> getCatalog = ref.watch(getCatalogProvider);
    final s = S.of(context);
    return SliverAppBar(
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
                    onTap: () {
                      context.pop();
                    },
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 16,
                  child: switch (getCatalog) {
                    AsyncData(:final value) => Text(
                        value.catalog[catalogID].name,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: Colors.white),
                      ),
                    AsyncError() => Text(
                        s.pizza,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: Colors.white),
                      ),
                    _ => const DefaultShimmer(
                        child: SizedBox(
                          height: 25,
                          width: 50,
                        ),
                      )
                  },
                ),
                Positioned(
                  bottom: -20,
                  right: 0,
                  child: Assets.images.partPizza.image(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
