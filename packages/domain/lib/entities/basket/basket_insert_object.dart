import 'package:database/database.dart';

//Маппим на этот класс, продуктов для корзины которые получаем из базы данных
class BasketItemObject {
  final int productId;
  final String name;
  final double price;
  final int count;
  final double totalPrice;

  BasketItemObject({
    required this.productId,
    required this.name,
    required this.price,
    required this.count,
    required this.totalPrice,
  });

  factory BasketItemObject.fromDao(BasketItem item) => BasketItemObject(
        productId: item.productId,
        name: item.name,
        price: item.price,
        count: item.count,
        totalPrice: item.totalPrice,
      );
}
