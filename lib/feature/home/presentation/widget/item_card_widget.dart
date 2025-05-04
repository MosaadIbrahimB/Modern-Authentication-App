import 'package:flutter/material.dart';
import 'package:modern_authentication_app/feature/home/data/model/product_model.dart';
import 'package:modern_authentication_app/feature/home/presentation/widget/row_add_sub_item_widget.dart';
import 'data_card_widget.dart';

class ItemCardWidget extends StatelessWidget {
  const ItemCardWidget({super.key, this.productModel});

  final ProductModel? productModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(12),
                  width: 160,
                  height: 130,
                  child: Image.asset(
                    productModel == null
                        ? "assets/images/fruit/f9.png"
                        : productModel!.image,
                  ),
                ),
                RowAddSubItemWidget(productModel: productModel),
              ],
            ),
            DataCardWidget(productModel: productModel),
          ],
        ),
      ),
    );
  }
}

