import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qtim_problem/core/utils/utils.dart';
import 'package:qtim_problem/core/widgets/widgets.dart';
import 'package:repository/repository.dart';
import 'package:ui_kit/gen/assets.gen.dart';

class BasketSliverAppBar extends ConsumerWidget {
  const BasketSliverAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = S.of(context);
    final basketListRef = ref.watch(basketItemListProvider).valueOrNull ?? [];
    log('basketListRef: $basketListRef');
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xFFFAFAFA),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              s.basket,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            basketListRef.isEmpty
                ? const SizedBox()
                : Positioned(
                    right: 16,
                    child: SmallRoundedButton(
                      onTap: () {
                        ref.watch(
                          basketDeleteAllItemsProvider.notifier,
                        );
                      },
                      child: Assets.images.clear.svg(),
                    ),
                  ),
            const Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SeparateLine(),
            ),
          ],
        ),
      ),
    );
  }
}
