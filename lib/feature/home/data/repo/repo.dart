import 'package:flutter/material.dart';

import '../../presentation/widget/item_slider_Widget.dart';
import '../model/carousel_slider_model.dart';
class Repo{
  static  List<Widget> items = List.generate(
    CarouselSliderModel.listCarousel.length,
        (index) => ItemSliderWidget(
      carouselSliderModel: CarouselSliderModel.listCarousel[index],
    ),
  );

}
