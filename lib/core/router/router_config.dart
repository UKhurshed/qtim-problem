
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

import 'app_routes.dart';

final config = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/catalog/detail-catalog',
  debugLogDiagnostics: !kReleaseMode,
  routes: $appRoutes,
);