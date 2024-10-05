// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatalogModelImpl _$$CatalogModelImplFromJson(Map<String, dynamic> json) =>
    _$CatalogModelImpl(
      catalog: (json['catalog'] as List<dynamic>)
          .map((e) => CatalogElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CatalogModelImplToJson(_$CatalogModelImpl instance) =>
    <String, dynamic>{
      'catalog': instance.catalog,
    };

_$CatalogElementImpl _$$CatalogElementImplFromJson(Map<String, dynamic> json) =>
    _$CatalogElementImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      menu: (json['menu'] as List<dynamic>)
          .map((e) => Menu.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CatalogElementImplToJson(
        _$CatalogElementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'menu': instance.menu,
    };

_$MenuImpl _$$MenuImplFromJson(Map<String, dynamic> json) => _$MenuImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      weight: json['weight'] as String,
      extra_information: json['extra_information'] as String?,
    );

Map<String, dynamic> _$$MenuImplToJson(_$MenuImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'weight': instance.weight,
      'extra_information': instance.extra_information,
    };
