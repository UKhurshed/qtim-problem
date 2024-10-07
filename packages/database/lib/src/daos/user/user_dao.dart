import 'package:database/src/setup/app_database.dart';
import 'package:database/src/tables/tables.dart';
import 'package:drift/drift.dart';
import 'dart:io';

part "user_dao.g.dart";

@DriftAccessor(tables: [Users, Avatars])
class UserDao extends DatabaseAccessor<AppDatabase> with _$UserDaoMixin {
  UserDao(super.attachedDatabase);

  // Получить cписок пользователей
  Future<User?> getUser() async {
    final usersFromDB = await select(users).get();
    return usersFromDB.isEmpty ? null : usersFromDB.first;
  }

  Future<int> createUser() async {
    return await into(users)
        .insert(UsersCompanion.insert(name: "", email: "", phone: ""));
  }

  // Обновить информацию пользователя
  Future<bool> updateUser(User user) async {
    return await (update(users).replace(user));
  }

  // Получить аватарки пользователя
  Future<List<Avatar>> getAvatarsForUser() async {
    return await (select(avatars)).get();
  }

  // Добавить аватар
  Future<int> insertAvatar(Uint8List avatarData) async {
    await deleteAvatar();
    final AvatarsCompanion avatar =
        AvatarsCompanion.insert(image: Uint8List.fromList(avatarData));
    return await into(avatars).insert(avatar);
  }

  // Удалить аватар
  Future<int> deleteAvatar() async {
    return await delete(avatars).go();
  }
}
