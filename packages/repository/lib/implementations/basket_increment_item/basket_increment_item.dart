

import 'package:database/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'basket_increment_item.g.dart';

@riverpod
class BasketIncrementItem extends _$BasketIncrementItem {
  @override
  Future<int> build(int productId) async {
    final database = ref.read(databaseProvider).basketItemsDao;
    return await database.incrementBasketItem(productId);
  }
}