import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../cart/data/model/add_note_model.dart';
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
    ProductModel(
      id: "6",
      image: "assets/images/fruit/f13.png",
      title: "Purex",
      rating: "4.8",
      ratingCount: "287",
      price: "3.99",
    ),
    ProductModel(
      id: "7",
      image: "assets/images/fruit/f13.png",
      title: "Purex",
      rating: "4.8",
      ratingCount: "287",
      price: "3.99",
    ),
    ProductModel(
      id: "8",
      image: "assets/images/fruit/f13.png",
      title: "Purex",
      rating: "4.8",
      ratingCount: "287",
      price: "3.99",
    ),
    ProductModel(
      id: "9",
      image: "assets/images/fruit/f13.png",
      title: "Purex",
      rating: "4.8",
      ratingCount: "287",
      price: "3.99",
    ),
  ];

  static final List<ProductModel> bagProduct = [


  ];



static  final List<AddNoteModel> detailList = [
    AddNoteModel(
      pathImage: "assets/images/checkout/person.png",
      title: "Kinglsey Ezechukwu",
      widget: Icon(Icons.arrow_forward_ios, size: 22),
    ),
    AddNoteModel(
      pathImage: "assets/images/checkout/telephon.png",
      title: "+44665512120",
      widget: Icon(Icons.arrow_forward_ios, size: 22),
    ),
  ];
static  final List<AddNoteModel> addressList = [
    AddNoteModel(
      pathImage: "assets/images/checkout/location.png",
      title: "Apartment 609 \n45 Soho Loop street birmingham",
      widget: Icon(Icons.arrow_forward_ios, size: 22),
    ),
  ];
static  final List<AddNoteModel> haveCouponList = [
    AddNoteModel(
      pathImage: "assets/images/checkout/coupon.png",
      title: "Apply Coupon",
      widget: Icon(Icons.arrow_forward_ios, size: 22),
    ),
  ];
static  final List<AddNoteModel> deliveryList = [
    AddNoteModel(
      pathImage: "assets/images/checkout/priority.png",
      title: "Priority  (10 -20 mins)",
      widget: Icon(
        Icons.radio_button_checked_sharp,
        color: Colors.green,
        size: 22,
      ),
    ),
    AddNoteModel(
      pathImage: "assets/images/checkout/stander.png",
      title: "Standard  (30 -45 mins)",
      widget: Icon(Icons.radio_button_off, size: 22),
    ),
    AddNoteModel(
      pathImage: "assets/images/checkout/scudel.png",
      title: "Schedule  (30 -45 mins)",
      widget: Icon(Icons.arrow_forward_ios, size: 22),
    ),
  ];


}

