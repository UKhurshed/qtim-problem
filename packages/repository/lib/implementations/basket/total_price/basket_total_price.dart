import 'package:database/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'basket_total_price.g.dart';

@riverpod
class BasketTotalPrice extends _$BasketTotalPrice {

  @override
  Future<double> build() async {
    final basketItemsDao = ref.read(databaseProvider).basketItemsDao;
    final item = await basketItemsDao.select(basketItemsDao.basketItems).watch().first;
    return item.last.totalPrice;
  }
}


