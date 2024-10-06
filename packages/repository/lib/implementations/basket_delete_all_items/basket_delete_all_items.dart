import 'package:database/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'basket_delete_all_items.g.dart';

@riverpod
class BasketDeleteAllItems extends _$BasketDeleteAllItems {
  @override
  Future<void> build() async {
    final database = ref.read(databaseProvider).basketItemsDao;
    return await database.deleteAllBasketItems();
  }
}
