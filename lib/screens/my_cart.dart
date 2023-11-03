import 'package:flutter/material.dart';
import '../Classes/CartItem_Class.dart';
import '../User_Credentials/login_Screen.dart';

class mycart extends StatelessWidget {
  final Cart cart;

  mycart({required this.cart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: ListView.builder(
        itemCount: cart.items.length,
        itemBuilder: (context, index) {
          final CartItem item = cart.items[index];
          final double price = double.parse(item.product.price);

          return
            Card(
              margin: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image.asset(
                  item.imagePath, // Use the provided image path
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                title: Text(item.product.name),
                subtitle: Text('Price: \Rs.${double.parse(item.product.price).toStringAsFixed(2)}'),
                trailing: Text('Quantity: ${item.quantity}'),
              ),
            );

        },
      ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Total: \Rs.${cart.calculateTotal().toStringAsFixed(2)}'),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>
                  LoginScreen(),
                  ));
                  // Add code to handle the "Place Order" action here
                },
                child: Text('Place Order'),
              ),
            ],
          ),
        ),

    );
  }
}
