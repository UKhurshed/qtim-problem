import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:database/database.dart'; // Drift база данных

final userProvider = StateNotifierProvider<UserNotifier, User?>((ref) {
  final database = ref.watch(databaseProvider);
  return UserNotifier(database.userDao);
});

class UserNotifier extends StateNotifier<User?> {
  final UserDao userDao;

  UserNotifier(this.userDao) : super(null) {
    _loadUser();
  }

  Future<void> _loadUser() async {
    final user =
        await userDao.getUser(); // Предположим, что у вас есть метод getUser()
    if (user == null) {
      _createUser();
    }
    state = user;
  }

  Future<void> _createUser() async {
    await userDao.createUser();
    _loadUser();
  }

  Future<void> updateUser(User updatedUser) async {
    await userDao.updateUser(updatedUser);
    state = updatedUser;
  }
}
