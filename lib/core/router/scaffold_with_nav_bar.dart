import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qtim_problem/core/utils/utils.dart';

class ScaffoldWithNavBar extends StatefulWidget {
  const ScaffoldWithNavBar({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  final StatefulNavigationShell navigationShell;

  @override
  State<ScaffoldWithNavBar> createState() => _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {
  @override
  Widget build(BuildContext context) {
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
            icon: _buildIcon(Icons.shopping_cart, isActive: false),
            activeIcon: _buildIcon(Icons.shopping_cart, isActive: true),
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
      size: 24,
      color: isActive ? Theme.of(context).primaryColor : Colors.grey.shade800,
    );
  }
}
