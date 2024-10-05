// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CatalogModel _$CatalogModelFromJson(Map<String, dynamic> json) {
  return _CatalogModel.fromJson(json);
}

/// @nodoc
mixin _$CatalogModel {
  List<CatalogElement> get catalog => throw _privateConstructorUsedError;

  /// Serializes this CatalogModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CatalogModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatalogModelCopyWith<CatalogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogModelCopyWith<$Res> {
  factory $CatalogModelCopyWith(
          CatalogModel value, $Res Function(CatalogModel) then) =
      _$CatalogModelCopyWithImpl<$Res, CatalogModel>;
  @useResult
  $Res call({List<CatalogElement> catalog});
}

/// @nodoc
class _$CatalogModelCopyWithImpl<$Res, $Val extends CatalogModel>
    implements $CatalogModelCopyWith<$Res> {
  _$CatalogModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatalogModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalog = null,
  }) {
    return _then(_value.copyWith(
      catalog: null == catalog
          ? _value.catalog
          : catalog // ignore: cast_nullable_to_non_nullable
              as List<CatalogElement>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatalogModelImplCopyWith<$Res>
    implements $CatalogModelCopyWith<$Res> {
  factory _$$CatalogModelImplCopyWith(
          _$CatalogModelImpl value, $Res Function(_$CatalogModelImpl) then) =
      __$$CatalogModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CatalogElement> catalog});
}

/// @nodoc
class __$$CatalogModelImplCopyWithImpl<$Res>
    extends _$CatalogModelCopyWithImpl<$Res, _$CatalogModelImpl>
    implements _$$CatalogModelImplCopyWith<$Res> {
  __$$CatalogModelImplCopyWithImpl(
      _$CatalogModelImpl _value, $Res Function(_$CatalogModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CatalogModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalog = null,
  }) {
    return _then(_$CatalogModelImpl(
      catalog: null == catalog
          ? _value._catalog
          : catalog // ignore: cast_nullable_to_non_nullable
              as List<CatalogElement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogModelImpl implements _CatalogModel {
  _$CatalogModelImpl({required final List<CatalogElement> catalog})
      : _catalog = catalog;

  factory _$CatalogModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogModelImplFromJson(json);

  final List<CatalogElement> _catalog;
  @override
  List<CatalogElement> get catalog {
    if (_catalog is EqualUnmodifiableListView) return _catalog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_catalog);
  }

  @override
  String toString() {
    return 'CatalogModel(catalog: $catalog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogModelImpl &&
            const DeepCollectionEquality().equals(other._catalog, _catalog));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_catalog));

  /// Create a copy of CatalogModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogModelImplCopyWith<_$CatalogModelImpl> get copyWith =>
      __$$CatalogModelImplCopyWithImpl<_$CatalogModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogModelImplToJson(
      this,
    );
  }
}

abstract class _CatalogModel implements CatalogModel {
  factory _CatalogModel({required final List<CatalogElement> catalog}) =
      _$CatalogModelImpl;

  factory _CatalogModel.fromJson(Map<String, dynamic> json) =
      _$CatalogModelImpl.fromJson;

  @override
  List<CatalogElement> get catalog;

  /// Create a copy of CatalogModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatalogModelImplCopyWith<_$CatalogModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CatalogElement _$CatalogElementFromJson(Map<String, dynamic> json) {
  return _CatalogElement.fromJson(json);
}

/// @nodoc
mixin _$CatalogElement {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Menu> get menu => throw _privateConstructorUsedError;

  /// Serializes this CatalogElement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CatalogElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatalogElementCopyWith<CatalogElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogElementCopyWith<$Res> {
  factory $CatalogElementCopyWith(
          CatalogElement value, $Res Function(CatalogElement) then) =
      _$CatalogElementCopyWithImpl<$Res, CatalogElement>;
  @useResult
  $Res call({int id, String name, List<Menu> menu});
}

/// @nodoc
class _$CatalogElementCopyWithImpl<$Res, $Val extends CatalogElement>
    implements $CatalogElementCopyWith<$Res> {
  _$CatalogElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatalogElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? menu = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      menu: null == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as List<Menu>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatalogElementImplCopyWith<$Res>
    implements $CatalogElementCopyWith<$Res> {
  factory _$$CatalogElementImplCopyWith(_$CatalogElementImpl value,
          $Res Function(_$CatalogElementImpl) then) =
      __$$CatalogElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, List<Menu> menu});
}

/// @nodoc
class __$$CatalogElementImplCopyWithImpl<$Res>
    extends _$CatalogElementCopyWithImpl<$Res, _$CatalogElementImpl>
    implements _$$CatalogElementImplCopyWith<$Res> {
  __$$CatalogElementImplCopyWithImpl(
      _$CatalogElementImpl _value, $Res Function(_$CatalogElementImpl) _then)
      : super(_value, _then);

  /// Create a copy of CatalogElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? menu = null,
  }) {
    return _then(_$CatalogElementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      menu: null == menu
          ? _value._menu
          : menu // ignore: cast_nullable_to_non_nullable
              as List<Menu>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogElementImpl implements _CatalogElement {
  _$CatalogElementImpl(
      {required this.id, required this.name, required final List<Menu> menu})
      : _menu = menu;

  factory _$CatalogElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogElementImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<Menu> _menu;
  @override
  List<Menu> get menu {
    if (_menu is EqualUnmodifiableListView) return _menu;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menu);
  }

  @override
  String toString() {
    return 'CatalogElement(id: $id, name: $name, menu: $menu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogElementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._menu, _menu));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_menu));

  /// Create a copy of CatalogElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogElementImplCopyWith<_$CatalogElementImpl> get copyWith =>
      __$$CatalogElementImplCopyWithImpl<_$CatalogElementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogElementImplToJson(
      this,
    );
  }
}

abstract class _CatalogElement implements CatalogElement {
  factory _CatalogElement(
      {required final int id,
      required final String name,
      required final List<Menu> menu}) = _$CatalogElementImpl;

  factory _CatalogElement.fromJson(Map<String, dynamic> json) =
      _$CatalogElementImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<Menu> get menu;

  /// Create a copy of CatalogElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatalogElementImplCopyWith<_$CatalogElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Menu _$MenuFromJson(Map<String, dynamic> json) {
  return _Menu.fromJson(json);
}

/// @nodoc
mixin _$Menu {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get weight => throw _privateConstructorUsedError;
  String? get extra_information => throw _privateConstructorUsedError;

  /// Serializes this Menu to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Menu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuCopyWith<Menu> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuCopyWith<$Res> {
  factory $MenuCopyWith(Menu value, $Res Function(Menu) then) =
      _$MenuCopyWithImpl<$Res, Menu>;
  @useResult
  $Res call(
      {int id,
      String name,
      double price,
      String weight,
      String? extra_information});
}

/// @nodoc
class _$MenuCopyWithImpl<$Res, $Val extends Menu>
    implements $MenuCopyWith<$Res> {
  _$MenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Menu
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? weight = null,
    Object? extra_information = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      extra_information: freezed == extra_information
          ? _value.extra_information
          : extra_information // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuImplCopyWith<$Res> implements $MenuCopyWith<$Res> {
  factory _$$MenuImplCopyWith(
          _$MenuImpl value, $Res Function(_$MenuImpl) then) =
      __$$MenuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      double price,
      String weight,
      String? extra_information});
}

/// @nodoc
class __$$MenuImplCopyWithImpl<$Res>
    extends _$MenuCopyWithImpl<$Res, _$MenuImpl>
    implements _$$MenuImplCopyWith<$Res> {
  __$$MenuImplCopyWithImpl(_$MenuImpl _value, $Res Function(_$MenuImpl) _then)
      : super(_value, _then);

  /// Create a copy of Menu
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? weight = null,
    Object? extra_information = freezed,
  }) {
    return _then(_$MenuImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      extra_information: freezed == extra_information
          ? _value.extra_information
          : extra_information // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuImpl implements _Menu {
  _$MenuImpl(
      {required this.id,
      required this.name,
      required this.price,
      required this.weight,
      required this.extra_information});

  factory _$MenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final double price;
  @override
  final String weight;
  @override
  final String? extra_information;

  @override
  String toString() {
    return 'Menu(id: $id, name: $name, price: $price, weight: $weight, extra_information: $extra_information)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.extra_information, extra_information) ||
                other.extra_information == extra_information));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, price, weight, extra_information);

  /// Create a copy of Menu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuImplCopyWith<_$MenuImpl> get copyWith =>
      __$$MenuImplCopyWithImpl<_$MenuImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuImplToJson(
      this,
    );
  }
}

abstract class _Menu implements Menu {
  factory _Menu(
      {required final int id,
      required final String name,
      required final double price,
      required final String weight,
      required final String? extra_information}) = _$MenuImpl;

  factory _Menu.fromJson(Map<String, dynamic> json) = _$MenuImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  double get price;
  @override
  String get weight;
  @override
  String? get extra_information;

  /// Create a copy of Menu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuImplCopyWith<_$MenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
