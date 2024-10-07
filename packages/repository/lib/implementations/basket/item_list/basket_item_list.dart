import 'package:database/database.dart';
import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'basket_item_list.g.dart';

@riverpod
class BasketItemList extends _$BasketItemList {

  @override
  Stream<List<BasketItemObject>> build() {
    final basketItemsDao = ref.read(databaseProvider).basketItemsDao;
    return basketItemsDao.basketElements.map(transform);
  }

  List<BasketItemObject> transform(List<BasketItem> entity) {
    return entity.map((e) => BasketItemObject.fromDao(e)).toList();
  }
}
