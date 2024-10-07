import 'package:database/database.dart';
import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'basket_item_insert.g.dart';

@riverpod
class BasketItemInsert extends _$BasketItemInsert {

  @override
  Future<int> build(BasketItemObject basketEntry) async {
    final database = ref.read(databaseProvider).basketItemsDao;
    final BasketItemsCompanion entry = BasketItemsCompanion.insert(
      productId: basketEntry.productId,
      name: basketEntry.name,
      price: basketEntry.price,
      count: basketEntry.count,
      totalPrice: basketEntry.totalPrice,
    );
    return await database.insertBasketItem(entry);
  }
}
