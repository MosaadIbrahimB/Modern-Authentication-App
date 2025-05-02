import 'package:flutter/material.dart';
import 'package:modern_authentication_app/feature/home/presentation/widget/product_list_widget.dart';
import 'package:modern_authentication_app/feature/home/presentation/widget/see_all_widget.dart';

import 'carousel_slider_widget.dart';
import 'category_list_widget.dart';
class BodyHomeScreenWidget extends StatelessWidget {
  const BodyHomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15),
              CarouselSliderWidget(),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CategoryListWidget(),
                    SizedBox(height: 20),
                    SeeAllWidget(),
                    SizedBox(height: 10),
                    ProductListWidget(),
                    SizedBox(height: 90,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
