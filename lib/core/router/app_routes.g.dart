// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $menuShellRoute,
    ];

RouteBase get $menuShellRoute => StatefulShellRouteData.$route(
      restorationScopeId: MenuShellRoute.$restorationScopeId,
      factory: $MenuShellRouteExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          navigatorKey: CatalogBranch.$navigatorKey,
          restorationScopeId: CatalogBranch.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/catalog',
              name: 'catalog',
              factory: $CatalogRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: BasketBranch.$navigatorKey,
          restorationScopeId: BasketBranch.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/basket',
              name: 'basket',
              factory: $BasketRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: ProfileBranch.$navigatorKey,
          restorationScopeId: ProfileBranch.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/profile',
              name: 'profile',
              factory: $ProfileRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $MenuShellRouteExtension on MenuShellRoute {
  static MenuShellRoute _fromState(GoRouterState state) =>
      const MenuShellRoute();
}

extension $CatalogRouteExtension on CatalogRoute {
  static CatalogRoute _fromState(GoRouterState state) => const CatalogRoute();

  String get location => GoRouteData.$location(
        '/catalog',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BasketRouteExtension on BasketRoute {
  static BasketRoute _fromState(GoRouterState state) => const BasketRoute();

  String get location => GoRouteData.$location(
        '/basket',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileRouteExtension on ProfileRoute {
  static ProfileRoute _fromState(GoRouterState state) => const ProfileRoute();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
