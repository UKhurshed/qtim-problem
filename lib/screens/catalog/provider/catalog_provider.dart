import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qtim_problem/screens/catalog/model/catalog_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ui_kit/gen/assets.gen.dart';

part 'catalog_provider.g.dart';

@riverpod
Future<CatalogModel> getCatalog(GetCatalogRef ref) async {
  await Future.delayed(Durations.extralong4);

  final response = await rootBundle.loadString(Assets.json.catalog);

  final json = jsonDecode(response);

  return CatalogModel.fromJson(json);
}
