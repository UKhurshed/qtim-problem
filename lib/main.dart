import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qtim_problem/screens/app.dart';

import 'core/utils/utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      observers: [StateLogger()],
      child: App(),
    ),
  );
}
