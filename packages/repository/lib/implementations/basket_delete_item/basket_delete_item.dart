
import 'package:database/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'basket_delete_item.g.dart';

@riverpod
class BasketDeleteItem extends _$BasketDeleteItem {
  @override
  Future<int> build(int productId) async {
    final database = ref.read(databaseProvider).basketItemsDao;
    return await database.deleteBasketItem(productId);
  }
}



