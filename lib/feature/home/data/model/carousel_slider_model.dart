import 'package:flutter/material.dart';
import 'package:modern_authentication_app/core/utils/app_color.dart';

class CarouselSliderModel {
  final String image;
  final String offer;
  final Color backColor;

  CarouselSliderModel(
     {required this.backColor,
    required this.image,
    required this.offer,
  });

  static List<CarouselSliderModel> listCarousel = [
    CarouselSliderModel(
      image: "assets/images/fruit/f1.png",
      offer: "Up to 30% offer",
        backColor:AppColor.green
    ),
    CarouselSliderModel(
        image: "assets/images/fruit/f2.png",
        offer: "Up to 30% offer",
        backColor:AppColor.green100
    ),
    CarouselSliderModel(
        image: "assets/images/fruit/f3.png",
        offer: "Up to 30% offer",
        backColor:AppColor.yellow
    ),

  ];
}
