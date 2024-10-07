import 'package:flutter/material.dart';
import 'package:qtim_problem/core/router/router.dart' as router;
import 'package:ui_kit/app/app.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//MaterialApp для настройки приложения
//Настраиваем Тему, получаем из отдельного модуля ui_kit
//Настраиваем делегаты Локализации
//Настраиваем конфиг роутов, который сгенерирован в папке router/router_config
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: const Locale('ru'),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getThemeData(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router.config,
    );
  }
}
