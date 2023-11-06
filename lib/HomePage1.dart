import 'dart:convert';

import 'package:ecom/screens/FavoritesScreen.dart';
import 'package:ecom/screens/OrdersScreen.dart';
import 'package:ecom/screens/Profilescreen.dart';
import 'package:ecom/screens/home_screen.dart';
import 'package:ecom/screens/my_cart.dart';
import 'package:ecom/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Inside_Pages/product_details_pg_1.dart';


class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {


  double screenHeight = 0;
  double screenWidth = 0;

  // Color primary = const Color(0xffeef444c);
  int _currentIndex = 0; // Index of the selected tab

  final List<Widget> _pages = [
    HomeScreen(),
    MyCart(cart: cart,),
     FavoritesScreen(favoriteItems: favoriteItems,),
    const OrdersScreen(),
    const Profilescreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed, // Use this to display all icons 
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'My Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'My Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}