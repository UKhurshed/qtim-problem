import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:qtim_problem/core/utils/utils.dart';
import 'package:repository/repository.dart';

class ScaffoldWithNavBar extends ConsumerStatefulWidget {
  const ScaffoldWithNavBar({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  final StatefulNavigationShell navigationShell;

  @override
  ConsumerState<ScaffoldWithNavBar> createState() => _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends ConsumerState<ScaffoldWithNavBar> {
  @override
  Widget build(BuildContext context) {
    final listOfBasketItems =
        ref.watch(basketItemListProvider).valueOrNull?.length ?? 0;
    final s = S.of(context);
    Widget scaffold = Scaffold(
      backgroundColor: const Color(0xFFEEF2F5),
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.list, isActive: false),
            activeIcon: _buildIcon(Icons.list, isActive: true),
            label: s.catalog,
          ),
          BottomNavigationBarItem(
            icon: listOfBasketItems == 0
                ? _buildIcon(Icons.person, isActive: false)
                : _buildBasketIcon(
                    Icons.shopping_cart,
                    isActive: false,
                    countOfBasketElements: listOfBasketItems,
                  ),
            activeIcon: listOfBasketItems == 0
                ? _buildIcon(Icons.person, isActive: false)
                : _buildBasketIcon(
                    Icons.shopping_cart,
                    isActive: true,
                    countOfBasketElements: listOfBasketItems,
                  ),
            label: s.basket,
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.person, isActive: false),
            activeIcon: _buildIcon(Icons.person, isActive: true),
            label: s.profile,
          ),
        ],
        currentIndex: widget.navigationShell.currentIndex,
        onTap: (int index) => _onTap(context, index),
      ),
    );
    return scaffold;
  }

  void _onTap(BuildContext context, int index) {
    widget.navigationShell.goBranch(index);
  }

  Widget _buildIcon(
    IconData assetName, {
    required bool isActive,
  }) {
    return Icon(
      assetName,
      size: 32,
      color: isActive ? Theme.of(context).primaryColor : Colors.grey.shade800,
    );
  }

  Widget _buildBasketIcon(
    IconData assetName, {
    required bool isActive,
    required int countOfBasketElements,
  }) {
    return Stack(
      children: [
        Icon(
          assetName,
          color:
              isActive ? Theme.of(context).primaryColor : Colors.grey.shade800,
          size: 32,
        ),
        Positioned(
          top: 0,
          right: 0,
          child: DecoratedBox(
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.green),
            child: SizedBox(
              height: 18,
              width: 18,
              child: Center(
                child: Text(
                  '$countOfBasketElements',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
