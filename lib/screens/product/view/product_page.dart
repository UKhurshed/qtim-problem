import 'package:flutter/material.dart';
import 'package:qtim_problem/core/widgets/widgets.dart';
import 'package:qtim_problem/screens/product/widgets/product_main_section_view.dart';
import 'package:qtim_problem/screens/product/widgets/product_sliver_app_bar.dart';

//Экран конкретного меню например Бургер мясной
// На этом экране отображаютс информация о родукте
// и можно добавить понравившуеся продукта в корзину
class ProductPage extends StatelessWidget {
  const ProductPage({
    super.key,
    required this.productId,
    required this.menuId,
  });

  static const routeName = 'product';

  final int productId;
  final int menuId;

  @override
  Widget build(BuildContext context) {
    return _ProductView(
      productId: productId,
    );
  }
}

class _ProductView extends StatelessWidget {
  const _ProductView({
    required this.productId,
  });

  final int productId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const ProductSliverAppBar(),
            ProductMainSectionView(productId: productId),
          ],
        ),
      ),
    );
  }
}
