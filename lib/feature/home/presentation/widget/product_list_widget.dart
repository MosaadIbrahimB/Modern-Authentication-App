import 'package:flutter/material.dart';
import '../../data/repo/repo.dart';
import 'item_card_widget.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 10),
        scrollDirection: Axis.horizontal,
        itemCount: Repo.listProduct.length,
        itemBuilder: (context, index) {
          return ItemCardWidget(productModel: Repo.listProduct[index]);
        },
      ),
    );
  }
}
