import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modern_authentication_app/core/utils/app_color.dart';
import 'package:modern_authentication_app/feature/home/data/repo/repo.dart';
import '../control/home/home_cubit.dart';
import '../widget/app_bar_fruits_widget.dart';
import '../widget/bag_item_widget.dart';
import '../widget/carousel_slider_widget.dart';
import '../widget/category_list_widget.dart';
import '../widget/product_list_widget.dart';
import '../widget/see_all_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Scaffold(
        appBar: AppBar(title: AppBarWidget()),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
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
                    SizedBox(height: 10),
                    BagItemWidget(),
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


