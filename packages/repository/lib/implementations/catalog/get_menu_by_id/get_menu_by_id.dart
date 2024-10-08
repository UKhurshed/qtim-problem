import 'dart:convert';

import 'package:domain/domain.dart';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ui_kit/ui_kit.dart';

part 'get_menu_by_id.g.dart';

@riverpod
class GetMenuById extends _$GetMenuById {
  @override
  Future<Menu> build(int menuId, int catalogId) async {
    final response = await rootBundle.loadString(Assets.json.catalog);

    final catalogItem = CatalogItem.fromJson(jsonDecode(response));
    final CatalogElement catalogElement =
        catalogItem.catalog.firstWhere((element) => element.id == catalogId);
    final Menu menu =
        catalogElement.menu.firstWhere((element) => element.id == menuId);
    return menu;
  }
}
