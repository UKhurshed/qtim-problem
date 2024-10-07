import 'package:database/src/setup/app_database.dart';
import 'package:database/src/tables/tables.dart';
import 'package:drift/drift.dart';

part "basket_items_dao.g.dart";

@DriftAccessor(tables: [BasketItems])
class BasketItemsDao extends DatabaseAccessor<AppDatabase>
    with _$BasketItemsDaoMixin {
  BasketItemsDao(super.attachedDatabase);

  //Стрим для получения списка продуктов
  Stream<List<BasketItem>> get basketElements => select(basketItems).watch();

  //Добавляем продукт в корзину, если такой продукт существует
  //увеличиваем количество продукта на 1
  //иначе добавляем новый инстанс BasketItemsCompanion
  Future<int> insertBasketItem(BasketItemsCompanion entry) async {
    final productExist = await (select(basketItems)
          ..where((tbl) => tbl.productId.equals(entry.productId.value)))
        .getSingleOrNull();
    if (productExist != null) {
      final totalPrice = productExist.price * (productExist.count + 1);
      final updatedEntity = productExist.copyWith(
          count: productExist.count + 1, totalPrice: totalPrice);
      return await (update(basketItems)
            ..where((tbl) => tbl.productId.equals(entry.productId.value)))
          .write(updatedEntity);
    } else {
      return await into(basketItems).insert(entry);
    }
  }

  //Удаляем все продукты
  Future<void> deleteAllBasketItems() async {
    await delete(basketItems).go();
  }

  //Удаляем конкретный продукт по id
  Future<int> deleteBasketItem(int productId) async {
    return await (delete(basketItems)
      ..where((tbl) => tbl.productId.equals(productId)))
        .go();
  }

  //Уменьшаем количество продукта на 1, если количество продукта было 1
  //и пользователь нажал кнопку "Минус", то продукт будет удален с корзины
  Future<int> decrementBasketItem(int productId) async {
    final item = await (select(basketItems)
          ..where(
            (tbl) => tbl.productId.equals(productId),
          ))
        .getSingle();

    if (item.count > 1) {
      final itemPrice = item.price;
      final totalPrice = (itemPrice * (item.count - 1));
      final updatedProduct =
          item.copyWith(count: item.count - 1, totalPrice: totalPrice);
      return await (update(basketItems)
            ..where((tbl) => tbl.productId.equals(productId)))
          .write(updatedProduct);
    } else {
      return await deleteBasketItem(productId);
    }
  }

  //Увеличиваем продукт на 1
  Future<int> incrementBasketItem(int productId) async {
    final item = await (select(basketItems)
          ..where((tbl) => tbl.productId.equals(productId)))
        .getSingle();
    final itemPrice = item.price;

    final updatedProduct = item.copyWith(
        count: item.count + 1, totalPrice: (itemPrice * (item.count + 1)));
    return await (update(basketItems)
          ..where((tbl) => tbl.productId.equals(productId)))
        .write(updatedProduct);
  }
}
