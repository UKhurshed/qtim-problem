import 'package:drift/drift.dart';

//Таблица для хранения информации пользователя
@DataClassName('User')
class Users extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get email => text()();
  TextColumn get phone => text()();
}

@DataClassName('Avatar')
class Avatars extends Table {
  IntColumn get id => integer().autoIncrement()();
  BlobColumn get image => blob()();  // Хранение аватарки в виде бинарных данных
}