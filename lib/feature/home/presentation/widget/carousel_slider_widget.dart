import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart' ;

import '../../data/repo/repo.dart';
import 'item_slider_Widget.dart';

class CarouselSliderWidget extends StatelessWidget {
 final  List<Widget> items = List.generate(
    Repo.listCarousel.length,
        (index) => ItemSliderWidget(
      carouselSliderModel: Repo.listCarousel[index],
    ),
  );


   CarouselSliderWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: items,
      options: CarouselOptions(
        height: 160,
        aspectRatio: 1,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: false,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.linear,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        // onPageChanged: callbackFunction,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
