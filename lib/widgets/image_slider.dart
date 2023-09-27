import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement the image slider widget here
    return CarouselSlider(
      items: [
        Image.asset('assets/images/1.png'), // Image 1
        Image.asset('assets/images/2.png'), // Image 2
        Image.asset('assets/images/3.png'), // Image 3
      ],
      options: CarouselOptions(
        height: 200.0,
        enlargeCenterPage: true,
        autoPlay: true,

      ),
    );
  }
}
