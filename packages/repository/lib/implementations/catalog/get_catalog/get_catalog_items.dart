import 'dart:convert';

import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ui_kit/ui_kit.dart';

part 'get_catalog_items.g.dart';

@riverpod
class GetCatalogItems extends _$GetCatalogItems {
  @override
  Future<CatalogItem> build() async {
    await Future.delayed(Durations.long2);
    final response = await rootBundle.loadString(Assets.json.catalog);

    final catalogItem = CatalogItem.fromJson(jsonDecode(response));

    return catalogItem;
  }
}
