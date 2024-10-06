// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $BasketItemsTable extends BasketItems
    with TableInfo<$BasketItemsTable, BasketItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BasketItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _productIdMeta =
      const VerificationMeta('productId');
  @override
  late final GeneratedColumn<int> productId = GeneratedColumn<int>(
      'product_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _countMeta = const VerificationMeta('count');
  @override
  late final GeneratedColumn<int> count = GeneratedColumn<int>(
      'count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _totalPriceMeta =
      const VerificationMeta('totalPrice');
  @override
  late final GeneratedColumn<double> totalPrice = GeneratedColumn<double>(
      'total_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, productId, name, price, count, totalPrice];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'basket_items';
  @override
  VerificationContext validateIntegrity(Insertable<BasketItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('product_id')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta));
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('count')) {
      context.handle(
          _countMeta, count.isAcceptableOrUnknown(data['count']!, _countMeta));
    } else if (isInserting) {
      context.missing(_countMeta);
    }
    if (data.containsKey('total_price')) {
      context.handle(
          _totalPriceMeta,
          totalPrice.isAcceptableOrUnknown(
              data['total_price']!, _totalPriceMeta));
    } else if (isInserting) {
      context.missing(_totalPriceMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BasketItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BasketItem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      productId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}product_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price'])!,
      count: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}count'])!,
      totalPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_price'])!,
    );
  }

  @override
  $BasketItemsTable createAlias(String alias) {
    return $BasketItemsTable(attachedDatabase, alias);
  }
}

class BasketItem extends DataClass implements Insertable<BasketItem> {
  final int id;
  final int productId;
  final String name;
  final double price;
  final int count;
  final double totalPrice;
  const BasketItem(
      {required this.id,
      required this.productId,
      required this.name,
      required this.price,
      required this.count,
      required this.totalPrice});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['product_id'] = Variable<int>(productId);
    map['name'] = Variable<String>(name);
    map['price'] = Variable<double>(price);
    map['count'] = Variable<int>(count);
    map['total_price'] = Variable<double>(totalPrice);
    return map;
  }

  BasketItemsCompanion toCompanion(bool nullToAbsent) {
    return BasketItemsCompanion(
      id: Value(id),
      productId: Value(productId),
      name: Value(name),
      price: Value(price),
      count: Value(count),
      totalPrice: Value(totalPrice),
    );
  }

  factory BasketItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BasketItem(
      id: serializer.fromJson<int>(json['id']),
      productId: serializer.fromJson<int>(json['productId']),
      name: serializer.fromJson<String>(json['name']),
      price: serializer.fromJson<double>(json['price']),
      count: serializer.fromJson<int>(json['count']),
      totalPrice: serializer.fromJson<double>(json['totalPrice']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'productId': serializer.toJson<int>(productId),
      'name': serializer.toJson<String>(name),
      'price': serializer.toJson<double>(price),
      'count': serializer.toJson<int>(count),
      'totalPrice': serializer.toJson<double>(totalPrice),
    };
  }

  BasketItem copyWith(
          {int? id,
          int? productId,
          String? name,
          double? price,
          int? count,
          double? totalPrice}) =>
      BasketItem(
        id: id ?? this.id,
        productId: productId ?? this.productId,
        name: name ?? this.name,
        price: price ?? this.price,
        count: count ?? this.count,
        totalPrice: totalPrice ?? this.totalPrice,
      );
  BasketItem copyWithCompanion(BasketItemsCompanion data) {
    return BasketItem(
      id: data.id.present ? data.id.value : this.id,
      productId: data.productId.present ? data.productId.value : this.productId,
      name: data.name.present ? data.name.value : this.name,
      price: data.price.present ? data.price.value : this.price,
      count: data.count.present ? data.count.value : this.count,
      totalPrice:
          data.totalPrice.present ? data.totalPrice.value : this.totalPrice,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BasketItem(')
          ..write('id: $id, ')
          ..write('productId: $productId, ')
          ..write('name: $name, ')
          ..write('price: $price, ')
          ..write('count: $count, ')
          ..write('totalPrice: $totalPrice')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, productId, name, price, count, totalPrice);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BasketItem &&
          other.id == this.id &&
          other.productId == this.productId &&
          other.name == this.name &&
          other.price == this.price &&
          other.count == this.count &&
          other.totalPrice == this.totalPrice);
}

class BasketItemsCompanion extends UpdateCompanion<BasketItem> {
  final Value<int> id;
  final Value<int> productId;
  final Value<String> name;
  final Value<double> price;
  final Value<int> count;
  final Value<double> totalPrice;
  const BasketItemsCompanion({
    this.id = const Value.absent(),
    this.productId = const Value.absent(),
    this.name = const Value.absent(),
    this.price = const Value.absent(),
    this.count = const Value.absent(),
    this.totalPrice = const Value.absent(),
  });
  BasketItemsCompanion.insert({
    this.id = const Value.absent(),
    required int productId,
    required String name,
    required double price,
    required int count,
    required double totalPrice,
  })  : productId = Value(productId),
        name = Value(name),
        price = Value(price),
        count = Value(count),
        totalPrice = Value(totalPrice);
  static Insertable<BasketItem> custom({
    Expression<int>? id,
    Expression<int>? productId,
    Expression<String>? name,
    Expression<double>? price,
    Expression<int>? count,
    Expression<double>? totalPrice,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (productId != null) 'product_id': productId,
      if (name != null) 'name': name,
      if (price != null) 'price': price,
      if (count != null) 'count': count,
      if (totalPrice != null) 'total_price': totalPrice,
    });
  }

  BasketItemsCompanion copyWith(
      {Value<int>? id,
      Value<int>? productId,
      Value<String>? name,
      Value<double>? price,
      Value<int>? count,
      Value<double>? totalPrice}) {
    return BasketItemsCompanion(
      id: id ?? this.id,
      productId: productId ?? this.productId,
      name: name ?? this.name,
      price: price ?? this.price,
      count: count ?? this.count,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<int>(productId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (count.present) {
      map['count'] = Variable<int>(count.value);
    }
    if (totalPrice.present) {
      map['total_price'] = Variable<double>(totalPrice.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BasketItemsCompanion(')
          ..write('id: $id, ')
          ..write('productId: $productId, ')
          ..write('name: $name, ')
          ..write('price: $price, ')
          ..write('count: $count, ')
          ..write('totalPrice: $totalPrice')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $BasketItemsTable basketItems = $BasketItemsTable(this);
  late final BasketItemsDao basketItemsDao =
      BasketItemsDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [basketItems];
}

typedef $$BasketItemsTableCreateCompanionBuilder = BasketItemsCompanion
    Function({
  Value<int> id,
  required int productId,
  required String name,
  required double price,
  required int count,
  required double totalPrice,
});
typedef $$BasketItemsTableUpdateCompanionBuilder = BasketItemsCompanion
    Function({
  Value<int> id,
  Value<int> productId,
  Value<String> name,
  Value<double> price,
  Value<int> count,
  Value<double> totalPrice,
});

class $$BasketItemsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $BasketItemsTable> {
  $$BasketItemsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get productId => $state.composableBuilder(
      column: $state.table.productId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get price => $state.composableBuilder(
      column: $state.table.price,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get count => $state.composableBuilder(
      column: $state.table.count,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get totalPrice => $state.composableBuilder(
      column: $state.table.totalPrice,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$BasketItemsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $BasketItemsTable> {
  $$BasketItemsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get productId => $state.composableBuilder(
      column: $state.table.productId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get price => $state.composableBuilder(
      column: $state.table.price,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get count => $state.composableBuilder(
      column: $state.table.count,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get totalPrice => $state.composableBuilder(
      column: $state.table.totalPrice,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$BasketItemsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BasketItemsTable,
    BasketItem,
    $$BasketItemsTableFilterComposer,
    $$BasketItemsTableOrderingComposer,
    $$BasketItemsTableCreateCompanionBuilder,
    $$BasketItemsTableUpdateCompanionBuilder,
    (BasketItem, BaseReferences<_$AppDatabase, $BasketItemsTable, BasketItem>),
    BasketItem,
    PrefetchHooks Function()> {
  $$BasketItemsTableTableManager(_$AppDatabase db, $BasketItemsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$BasketItemsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$BasketItemsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> productId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<double> price = const Value.absent(),
            Value<int> count = const Value.absent(),
            Value<double> totalPrice = const Value.absent(),
          }) =>
              BasketItemsCompanion(
            id: id,
            productId: productId,
            name: name,
            price: price,
            count: count,
            totalPrice: totalPrice,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int productId,
            required String name,
            required double price,
            required int count,
            required double totalPrice,
          }) =>
              BasketItemsCompanion.insert(
            id: id,
            productId: productId,
            name: name,
            price: price,
            count: count,
            totalPrice: totalPrice,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$BasketItemsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BasketItemsTable,
    BasketItem,
    $$BasketItemsTableFilterComposer,
    $$BasketItemsTableOrderingComposer,
    $$BasketItemsTableCreateCompanionBuilder,
    $$BasketItemsTableUpdateCompanionBuilder,
    (BasketItem, BaseReferences<_$AppDatabase, $BasketItemsTable, BasketItem>),
    BasketItem,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$BasketItemsTableTableManager get basketItems =>
      $$BasketItemsTableTableManager(_db, _db.basketItems);
}
