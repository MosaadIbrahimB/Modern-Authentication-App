import 'package:flutter/material.dart';

import '../../data/model/category_model.dart';
import 'item_category_widget.dart';

class CategoryListWidget extends StatelessWidget {
  CategoryListWidget({super.key});

  final List<CategoryModel> listCategory = [
    CategoryModel(image: 'assets/images/fruit/f4.png', title: "Fruits"),
    CategoryModel(image: 'assets/images/fruit/f5.png', title: "Milk & egg"),
    CategoryModel(image: 'assets/images/fruit/f6.png', title: "Beverages"),
    CategoryModel(image: 'assets/images/fruit/f7.png', title: "Milk & egg"),
    CategoryModel(image: 'assets/images/fruit/f8.png', title: "Milk & egg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 15),
        scrollDirection: Axis.horizontal,
        itemCount: listCategory.length,
        itemBuilder:
            (context, index) =>
                ItemCategoryWidget(categoryModel: listCategory[index]),
      ),
    );
  }
}
