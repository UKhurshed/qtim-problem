import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_model.freezed.dart';

part 'catalog_model.g.dart';

@freezed
class CatalogModel with _$CatalogModel {
  factory CatalogModel({
    required List<CatalogElement> catalog,
  }) = _CatalogModel;

  factory CatalogModel.fromJson(Map<String, dynamic> json) =>
      _$CatalogModelFromJson(json);
}

@freezed
class CatalogElement with _$CatalogElement {
  factory CatalogElement({
    required int id,
    required String name,
    required List<Menu> menu,
  }) = _CatalogElement;

  factory CatalogElement.fromJson(Map<String, dynamic> json) =>
      _$CatalogElementFromJson(json);
}

@freezed
class Menu with _$Menu {

  factory Menu({
    required int id,
    required String name,
    required double price,
    required String weight,
    required String? extra_information,
  }) = _Menu;

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);
}