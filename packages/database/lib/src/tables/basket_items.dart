import 'package:drift/drift.dart';

@DataClassName('BasketItem')
class BasketItems extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get productId => integer()();

  TextColumn get name => text()();

  RealColumn get price => real()();

  IntColumn get count => integer()();

  RealColumn get totalPrice => real()();
}