import 'package:database/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'basket_decrement_item.g.dart';

@riverpod
class BasketDecrementItem extends _$BasketDecrementItem {
  @override
  Future<int> build(int productId) async {
    final database = ref.read(databaseProvider).basketItemsDao;
    return await database.decrementBasketItem(productId);
  }
}



