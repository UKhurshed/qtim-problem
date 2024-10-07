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

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'Test', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'test@mail.com', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      '+79123456780', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, email, phone];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('Test')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['Test']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('test@mail.com')) {
      context.handle(_emailMeta,
          email.isAcceptableOrUnknown(data['test@mail.com']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('+79123456780')) {
      context.handle(_phoneMeta,
          phone.isAcceptableOrUnknown(data['+79123456780']!, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Test'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}test@mail.com'])!,
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}+79123456780'])!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final int id;
  final String name;
  final String email;
  final String phone;
  const User(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['Test'] = Variable<String>(name);
    map['test@mail.com'] = Variable<String>(email);
    map['+79123456780'] = Variable<String>(phone);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      name: Value(name),
      email: Value(email),
      phone: Value(phone),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      phone: serializer.fromJson<String>(json['phone']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'phone': serializer.toJson<String>(phone),
    };
  }

  User copyWith({int? id, String? name, String? email, String? phone}) => User(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        phone: phone ?? this.phone,
      );
  User copyWithCompanion(UsersCompanion data) {
    return User(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      email: data.email.present ? data.email.value : this.email,
      phone: data.phone.present ? data.phone.value : this.phone,
    );
  }

  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('phone: $phone')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, email, phone);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.name == this.name &&
          other.email == this.email &&
          other.phone == this.phone);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> email;
  final Value<String> phone;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.phone = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String email,
    required String phone,
  })  : name = Value(name),
        email = Value(email),
        phone = Value(phone);
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? email,
    Expression<String>? phone,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'Test': name,
      if (email != null) 'test@mail.com': email,
      if (phone != null) '+79123456780': phone,
    });
  }

  UsersCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? email,
      Value<String>? phone}) {
    return UsersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['Test'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['test@mail.com'] = Variable<String>(email.value);
    }
    if (phone.present) {
      map['+79123456780'] = Variable<String>(phone.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('phone: $phone')
          ..write(')'))
        .toString();
  }
}

class $AvatarsTable extends Avatars with TableInfo<$AvatarsTable, Avatar> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AvatarsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<Uint8List> image = GeneratedColumn<Uint8List>(
      'image', aliasedName, false,
      type: DriftSqlType.blob, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, image];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'avatars';
  @override
  VerificationContext validateIntegrity(Insertable<Avatar> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Avatar map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Avatar(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}image'])!,
    );
  }

  @override
  $AvatarsTable createAlias(String alias) {
    return $AvatarsTable(attachedDatabase, alias);
  }
}

class Avatar extends DataClass implements Insertable<Avatar> {
  final int id;
  final Uint8List image;
  const Avatar({required this.id, required this.image});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['image'] = Variable<Uint8List>(image);
    return map;
  }

  AvatarsCompanion toCompanion(bool nullToAbsent) {
    return AvatarsCompanion(
      id: Value(id),
      image: Value(image),
    );
  }

  factory Avatar.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Avatar(
      id: serializer.fromJson<int>(json['id']),
      image: serializer.fromJson<Uint8List>(json['image']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'image': serializer.toJson<Uint8List>(image),
    };
  }

  Avatar copyWith({int? id, Uint8List? image}) => Avatar(
        id: id ?? this.id,
        image: image ?? this.image,
      );
  Avatar copyWithCompanion(AvatarsCompanion data) {
    return Avatar(
      id: data.id.present ? data.id.value : this.id,
      image: data.image.present ? data.image.value : this.image,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Avatar(')
          ..write('id: $id, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, $driftBlobEquality.hash(image));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Avatar &&
          other.id == this.id &&
          $driftBlobEquality.equals(other.image, this.image));
}

class AvatarsCompanion extends UpdateCompanion<Avatar> {
  final Value<int> id;
  final Value<Uint8List> image;
  const AvatarsCompanion({
    this.id = const Value.absent(),
    this.image = const Value.absent(),
  });
  AvatarsCompanion.insert({
    this.id = const Value.absent(),
    required Uint8List image,
  }) : image = Value(image);
  static Insertable<Avatar> custom({
    Expression<int>? id,
    Expression<Uint8List>? image,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (image != null) 'image': image,
    });
  }

  AvatarsCompanion copyWith({Value<int>? id, Value<Uint8List>? image}) {
    return AvatarsCompanion(
      id: id ?? this.id,
      image: image ?? this.image,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (image.present) {
      map['image'] = Variable<Uint8List>(image.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AvatarsCompanion(')
          ..write('id: $id, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $BasketItemsTable basketItems = $BasketItemsTable(this);
  late final $UsersTable users = $UsersTable(this);
  late final $AvatarsTable avatars = $AvatarsTable(this);
  late final BasketItemsDao basketItemsDao =
      BasketItemsDao(this as AppDatabase);
  late final UserDao userDao = UserDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [basketItems, users, avatars];
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
typedef $$UsersTableCreateCompanionBuilder = UsersCompanion Function({
  Value<int> id,
  required String name,
  required String email,
  required String phone,
});
typedef $$UsersTableUpdateCompanionBuilder = UsersCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String> email,
  Value<String> phone,
});

class $$UsersTableFilterComposer
    extends FilterComposer<_$AppDatabase, $UsersTable> {
  $$UsersTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get phone => $state.composableBuilder(
      column: $state.table.phone,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$UsersTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $UsersTable> {
  $$UsersTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get phone => $state.composableBuilder(
      column: $state.table.phone,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$UsersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
    User,
    PrefetchHooks Function()> {
  $$UsersTableTableManager(_$AppDatabase db, $UsersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UsersTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$UsersTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<String> phone = const Value.absent(),
          }) =>
              UsersCompanion(
            id: id,
            name: name,
            email: email,
            phone: phone,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String email,
            required String phone,
          }) =>
              UsersCompanion.insert(
            id: id,
            name: name,
            email: email,
            phone: phone,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UsersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
    User,
    PrefetchHooks Function()>;
typedef $$AvatarsTableCreateCompanionBuilder = AvatarsCompanion Function({
  Value<int> id,
  required Uint8List image,
});
typedef $$AvatarsTableUpdateCompanionBuilder = AvatarsCompanion Function({
  Value<int> id,
  Value<Uint8List> image,
});

class $$AvatarsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $AvatarsTable> {
  $$AvatarsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<Uint8List> get image => $state.composableBuilder(
      column: $state.table.image,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$AvatarsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $AvatarsTable> {
  $$AvatarsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<Uint8List> get image => $state.composableBuilder(
      column: $state.table.image,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$AvatarsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AvatarsTable,
    Avatar,
    $$AvatarsTableFilterComposer,
    $$AvatarsTableOrderingComposer,
    $$AvatarsTableCreateCompanionBuilder,
    $$AvatarsTableUpdateCompanionBuilder,
    (Avatar, BaseReferences<_$AppDatabase, $AvatarsTable, Avatar>),
    Avatar,
    PrefetchHooks Function()> {
  $$AvatarsTableTableManager(_$AppDatabase db, $AvatarsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$AvatarsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$AvatarsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<Uint8List> image = const Value.absent(),
          }) =>
              AvatarsCompanion(
            id: id,
            image: image,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required Uint8List image,
          }) =>
              AvatarsCompanion.insert(
            id: id,
            image: image,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$AvatarsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $AvatarsTable,
    Avatar,
    $$AvatarsTableFilterComposer,
    $$AvatarsTableOrderingComposer,
    $$AvatarsTableCreateCompanionBuilder,
    $$AvatarsTableUpdateCompanionBuilder,
    (Avatar, BaseReferences<_$AppDatabase, $AvatarsTable, Avatar>),
    Avatar,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$BasketItemsTableTableManager get basketItems =>
      $$BasketItemsTableTableManager(_db, _db.basketItems);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db, _db.users);
  $$AvatarsTableTableManager get avatars =>
      $$AvatarsTableTableManager(_db, _db.avatars);
}
