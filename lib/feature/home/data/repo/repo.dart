import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../presentation/widget/item_slider_Widget.dart';
import '../model/carousel_slider_model.dart';
import '../model/product_model.dart';

class Repo {
  static List<CarouselSliderModel> listCarousel = [

    CarouselSliderModel(
        image: "assets/images/fruit/f2.png",
        offer: "Up to 30% offer",
        backColor:AppColor.green100
    ),
    CarouselSliderModel(
        image: "assets/images/fruit/f1.png",
        offer: "Up to 30% offer",
        backColor:AppColor.green
    ),
    CarouselSliderModel(
        image: "assets/images/fruit/f3.png",
        offer: "Up to 30% offer",
        backColor:AppColor.yellow
    ),

  ];


  static List<Widget> items = List.generate(
    listCarousel.length,
    (index) => ItemSliderWidget(
      carouselSliderModel: listCarousel[index],
    ),
  );

  static final List<ProductModel> listProduct = [
    ProductModel(
      id: "1",
      image: "assets/images/fruit/f9.png",
      title: "Banana",
      rating: "4.8",
      ratingCount: "287",
      price: "3.99",
    ),
    ProductModel(
      id: "2",
      image: "assets/images/fruit/f10.png",
      title: "Pepper",
      rating: "4.8",
      ratingCount: "287",
      price: "2.99",
    ),
    ProductModel(
      id: "3",
      image: "assets/images/fruit/f11.png",
      title: "Orange",
      rating: "4.8",
      ratingCount: "287",
      price: "3.99",
    ),
    ProductModel(
      id: "4",
      image: "assets/images/fruit/f12.png",
      title: "Orange",
      rating: "4.8",
      ratingCount: "287",
      price: "3.99",
    ),
    ProductModel(
      id: "5",
      image: "assets/images/fruit/f13.png",
      title: "Purex",
      rating: "4.8",
      ratingCount: "287",
      price: "3.99",
    ),
  ];

  static final List<ProductModel> bagProduct = [


  ];

}

