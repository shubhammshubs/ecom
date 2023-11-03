


import 'package:flutter/material.dart';
import '../Inside_Pages/Product.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Product> favoriteItems;

  FavoritesScreen({required this.favoriteItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          final Product product = favoriteItems[index];
          return
            Card(
              margin: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image.asset(
                  product.images[0],
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                title: Text(product.name),
                subtitle: Text('Price: \Rs.${double.parse(product.price).toStringAsFixed(2)}'),
                // trailing: Text('Quantity: ${item.quantity}'),
              ),
            );
            ListTile(
            leading: Image.asset(
              product.images[0],
              width: 80,
              height: 80,
            ),
            title: Text(product.name),
            subtitle: Text('Price: \$${product.price}'),
          );
        },
      ),
    );
  }
}
