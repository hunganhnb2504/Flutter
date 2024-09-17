import 'package:flutter/material.dart';

class Product {
  const Product({required this.name});
  final String name;
}

typedef CartChangedCallback = Function(Product product, bool inCart);

class ShoppingListSystem extends StatelessWidget {
  ShoppingListSystem(
      {required this.product,
      required this.inCart,
      required this.onCartChanged})
      : super(key: ObjectKey(product));

  final Product product;
  final bool inCart;
  final CartChangedCallback onCartChanged;

  Color _getColor(BuildContext context) {
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle? _getTextStyle(BuildContext context) {
    if (!inCart) return null;

    return const TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onCartChanged(product, inCart);
      },
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(product.name[0]),
      ),
      title: Text(product.name, style: _getTextStyle(context)),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      body: Center(
        child: ShoppingListSystem(
          product: const Product(name: 'Eggs'),
          inCart: false,
          onCartChanged: (product, inCart) {},
        ),
      ),
    )),
  );
}
