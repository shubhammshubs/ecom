import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import '../screens/my_cart.dart';
import '../widgets/popular_items_slider.dart';
import 'Product.dart'; // Import the Product class
import 'package:expandable/expandable.dart';

class ProductDetailsPage extends StatefulWidget {
  final Product product;

  // Constructor to receive the product object
  ProductDetailsPage({required this.product});

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int selectedQuantity = 1; // Initial quantity

  void incrementQuantity() {
    setState(() {
      selectedQuantity++;
    });
  }

  void decrementQuantity() {
    if (selectedQuantity > 1) {
      setState(() {
        selectedQuantity--;
      });
    }
  }

  bool isSavedForLater = false; // State to track whether saved for later

  // Function to save for later
  void saveForLater() {
    setState(() {
      isSavedForLater = !isSavedForLater; // Toggle the state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Product Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Images Carousel
            Container(
              height: 300.0, // Adjust the height as needed
              color: Colors.white24, // Replace with the off-white color you prefer
              child: PageView.builder(
                itemCount: widget.product.images.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    widget.product.images[index],
                    fit: BoxFit.fill,
                  );
                },
              ),
            ),

            // Product Title
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    widget.product.name, // Display the product name
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            // Product Price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Place Rs and Quantity at both corners
                    children: [
                      Text(
                        'Rs. ${widget.product.price}', // Display the product price
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green, // Price text color
                        ),
                      ),
                      SizedBox(width: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Place Rs and Quantity at both corners
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8.0), // Adjust the radius as needed
                              color: Colors.green, // Background color
                            ),
                            child: IconButton(
                              onPressed: decrementQuantity,
                              icon: Icon(Icons.remove),
                              color: Colors.white, // Icon color
                              iconSize: 16.0, // Adjust the icon size here
                            ),
                          ),
                          Text(
                            " ${selectedQuantity.toString()} KG ",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8.0), // Adjust the radius as needed
                              color: Colors.green, // Background color
                            ),
                            child: IconButton(
                              onPressed: incrementQuantity,
                              icon: Icon(Icons.add),
                              color: Colors.white, // Icon color
                              iconSize: 20.0, // Adjust the icon size here
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Product Description
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Product Description:', // Header for product description
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ExpandableText(
                widget.product.description, // Display the product description
                style: TextStyle(fontSize: 14.0),
                expandText: 'Read More',
                collapseText: 'Read Less',
                maxLines: 7, // Set the maximum number of lines to display before expanding
              ),
            ),

            SizedBox(height: 6,),
            Container(
              height: 1.0,            // Height of the line
              color: Colors.black,    // Color of the line
              margin: EdgeInsets.symmetric(vertical: 10.0), // Optional margin to adjust spacing
            ),

            // More Items Section
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'More Items',
                  style: TextStyle(fontSize: 25, color: Colors.black, fontFamily: "NexaRegular"),
                ),
                SizedBox(height: 6,),
                Container(
                  height: 200.0, // Set a suitable height
                  child: PopularItemsSlider(),
                ),
              ],
            ),


          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                mycart();
              },
              child: Text('Add to Cart'),
            ),
            ElevatedButton(
              onPressed: () {
                saveForLater();
              },
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 200),
                style: TextStyle(
                  fontWeight: isSavedForLater ? FontWeight.bold : FontWeight.normal,
                ),
                child: Text('Save for Later'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
