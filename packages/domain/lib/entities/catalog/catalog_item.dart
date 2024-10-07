import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_item.freezed.dart';

part 'catalog_item.g.dart';

//Маппим на этот класс, списка каталога, которые развертываем из ассетов
@freezed
class CatalogItem with _$CatalogItem {
  factory CatalogItem({
    required List<CatalogElement> catalog,
  }) = _CatalogItem;

  factory CatalogItem.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemFromJson(json);
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