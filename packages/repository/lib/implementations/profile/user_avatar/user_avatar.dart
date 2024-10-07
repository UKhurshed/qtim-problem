import 'dart:typed_data';

import 'package:database/database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final avatarsProvider = StateNotifierProvider<AvatarsNotifier, Avatar?>((ref) {
  final database = ref.watch(databaseProvider);
  return AvatarsNotifier(database.userDao);
});

class AvatarsNotifier extends StateNotifier<Avatar?> {
  final UserDao database;

  AvatarsNotifier(this.database) : super(null) {
    loadAvatars();
  }

  Future<void> loadAvatars() async {
    final avatars = await database.getAvatarsForUser();
    state = avatars.isEmpty ? null : avatars.first;
  }

  Future<void> addAvatar(Uint8List avatarData) async {
    await database.insertAvatar(avatarData);
    await loadAvatars();
  }

  Future<void> deleteAvatar(int avatarId, int userId) async {
    await database.deleteAvatar();
    await loadAvatars();
  }
}
