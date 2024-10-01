import 'package:flutter/material.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({super.key});

  static const routeName = 'basket';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Basket'),
        ),
      ),
    );
  }
}
