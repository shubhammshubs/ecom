import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../widgets/best_deals_slider.dart';
import '../widgets/category_slider.dart';
import '../widgets/image_slider.dart';
import '../widgets/popular_items_slider.dart';
import '../widgets/search_bar.dart';
import 'Category.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   // leading: const BackButton(
      //   //   color: Colors.black,),
      //
      //   title: const Text("Grocery App",
      //     style: TextStyle(color: Colors.black),),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // User's Location
        const Padding(
        padding: EdgeInsets.all(16.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 26,),
            Text('Location',
              style: TextStyle(color: Colors.black54,
                fontFamily: "NexaRegular",
              ),),
            SizedBox(height: 6,),
            Row(
              children: [
                Icon(Icons.location_on,color: Colors.green,),
                Text(
                  'Pune City,India',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),

            Container(
              // height: 200.0, // Set a suitable height
              child: SearchBartool(),
            ),

            SizedBox(height: 25,),
            // -----------------------------Image slider Code-------------------------------

            Container(
                child: ImageSlider(),
            ),
            // -----------------------------Image slider Category Section Code-------------------------------

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontFamily: "NexaRegular",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CategoryPage(), // Use your CategoryPage widget
                          ),
                        );
                      },
                      child: const Text(
                        'See All  ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.green, // Customize the button text color
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 6,),
                //==================Fetched this Category items from Category page===============================
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 120.0,
                      child: CategoryItem(category:
                      categories[0]), // Display the first category
                    ),
                    // SizedBox(width: 4,),
                    Container(
                      height: 120.0,
                      child: CategoryItem(category:
                      categories[1]), // Display the first category
                    ),
                    // SizedBox(width: 14,),
                    Container(
                      height: 120.0,
                      child: CategoryItem(category:
                      categories[2]), // Display the first category
                    ),
                    // SizedBox(width: 14,),
                    Container(
                      height: 120.0,
                      child: CategoryItem(category:
                      categories[3]), // Display the first category
                    ),
                    Container(
                      height: 120.0,
                      child: CategoryItem(category:
                      categories[4]), // Display the first category
                    ),
                  ],
                ),


              ],
            )
,
            // -----------------------------Best Deal code-------------------------------

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('  Best Deal',
                  style: TextStyle(fontSize: 25,color: Colors.black,
                    fontFamily: "NexaRegular",
                  ),
                ),
                SizedBox(height: 6,),
                Container(
                  height: 165.0, // Set a suitable height
                  child: BestDealsSlider(),
                ),
              ],
            ),
            // -----------------------------Popular Item code-------------------------------
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('  Popular Item',
                  style: TextStyle(fontSize: 25,color: Colors.black,
                    fontFamily: "NexaRegular",
                  ),
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
    );
  }
}
