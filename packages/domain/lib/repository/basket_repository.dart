import 'package:domain/entities/basket/basket_insert_object.dart';

abstract class BasketRepository {

  Stream<List<BasketItemObject>> get basketItems;

  Future<int> insertBasketItem(BasketItemObject basketEntry);

  Future<void> deleteAll();
}
