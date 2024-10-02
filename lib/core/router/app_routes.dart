import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:qtim_problem/screens/basket/view/basket_page.dart';
import 'package:qtim_problem/screens/catalog/view/catalog_page.dart';
import 'package:qtim_problem/screens/detail_catalog/view/detail_catalog_page.dart';
import 'package:qtim_problem/screens/product/view/product_page.dart';
import 'package:qtim_problem/screens/profile/view/profile_page.dart';

import 'router.dart';

part 'app_routes.g.dart';

const shellRestorationScopeId = 'shellRestorationScopeId';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final catalogNavigatorKey = GlobalKey<NavigatorState>();
final basketNavigatorKey = GlobalKey<NavigatorState>();
final profileNavigatorKey = GlobalKey<NavigatorState>();

@TypedStatefulShellRoute<MenuShellRoute>(
  branches: [
    TypedStatefulShellBranch<CatalogBranch>(
      routes: [
        TypedGoRoute<CatalogRoute>(
          path: '/catalog',
          name: CatalogPage.routeName,
          routes: [
            TypedGoRoute<DetailCatalogRoute>(
              path: 'detail-catalog',
              name: DetailCatalogPage.routeName,
            ),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<BasketBranch>(
      routes: [
        TypedGoRoute<BasketRoute>(
          path: '/basket',
          name: BasketPage.routeName,
        ),
      ],
    ),
    TypedStatefulShellBranch<ProfileBranch>(
      routes: [
        TypedGoRoute<ProfileRoute>(
          path: '/profile',
          name: ProfilePage.routeName,
        ),
      ],
    ),
  ],
)
class MenuShellRoute extends StatefulShellRouteData {
  const MenuShellRoute();

  static const String $restorationScopeId = shellRestorationScopeId;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return ScaffoldWithNavBar(
      navigationShell: navigationShell,
    );
  }
}

// ============================================================================
class CatalogBranch extends StatefulShellBranchData {
  const CatalogBranch();

  static const String $restorationScopeId = shellRestorationScopeId;
  static final GlobalKey<NavigatorState> $navigatorKey = catalogNavigatorKey;
}

class CatalogRoute extends GoRouteData {
  const CatalogRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CatalogPage();
  }
}

class DetailCatalogRoute extends GoRouteData {
  const DetailCatalogRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DetailCatalogPage();
  }
}

@TypedGoRoute<ProductRoute>(
  path: '/product',
  name: ProductPage.routeName,
)
class ProductRoute extends GoRouteData {
  const ProductRoute();

  static final GlobalKey<NavigatorState> $navigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProductPage();
  }
}

// ============================================================================
class BasketBranch extends StatefulShellBranchData {
  const BasketBranch();

  static const String $restorationScopeId = shellRestorationScopeId;
  static final GlobalKey<NavigatorState> $navigatorKey = basketNavigatorKey;
}

class BasketRoute extends GoRouteData {
  const BasketRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BasketPage();
  }
}

// ============================================================================
class ProfileBranch extends StatefulShellBranchData {
  const ProfileBranch();

  static const String $restorationScopeId = shellRestorationScopeId;
  static final GlobalKey<NavigatorState> $navigatorKey = profileNavigatorKey;
}

class ProfileRoute extends GoRouteData {
  const ProfileRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfilePage();
  }
}
