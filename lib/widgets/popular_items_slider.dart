import 'package:flutter/material.dart';

import '../Inside_Pages/Product.dart';
import '../Inside_Pages/product_details_pg_1.dart';
import '../Inside_Pages/product_list.dart';

class PopularItemsSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace these image file names with your actual image file names
    final List<Map<String, dynamic>> Popularitem = [
      {
        'id': 4,
        'imagePath': 'assets/images/4.png', // Image for Product 1
      },
      {
        'id': 5,
        'imagePath': 'assets/images/5.png', // Image for Product 2
      },
      {
        'id': 3,
        'imagePath': 'assets/images/3.png', // Image for Product 2
      },
      {
        'id': 1,
        'imagePath': 'assets/images/1.png', // Image for Product 2
      },
      // Add more image entries with unique ids
    ];

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: Popularitem.length,
      itemBuilder: (context, index) {
        final Map<String, dynamic> imageData = Popularitem[index];
        final int productId = imageData['id'];

        final Product product =
        ItemsList.firstWhere((item) => item.id == productId);

        return GestureDetector(
          onTap: () {
            // Navigate to the ProductDetailsPage and pass the selected Product object
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductDetailsPage(
                  product: product,
                ),
              ),
            );
          },
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Image.asset(
                  imageData['imagePath'], // Load the correct image path
                  width: 100.0,
                  height: 100.0,
                ),
                SizedBox(height: 8.0),
                Text(
                  product.name, // Display the product name from the Product object
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
