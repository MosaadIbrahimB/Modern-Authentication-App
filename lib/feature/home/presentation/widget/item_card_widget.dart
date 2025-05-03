import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modern_authentication_app/feature/home/data/model/product_model.dart';
import 'package:modern_authentication_app/feature/home/presentation/control/home/home_cubit.dart';

import 'data_card_widget.dart';
import 'icon_add_item_widget.dart';
import 'icon_sub_item_widget.dart';

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

class RowAddSubItemWidget extends StatelessWidget {
  const RowAddSubItemWidget({super.key, required this.productModel});

  final ProductModel? productModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Positioned(
          bottom: 8,
          right: 8,
          child: Container(
            decoration: BoxDecoration(
              color:
                  productModel?.count != 0 ? Colors.white : Colors.transparent,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                productModel?.count != 0
                    ? Row(
                      children: [
                        IconSubItemWidget(productModel: productModel),
                        SizedBox(width: 5),
                        Text("${productModel?.count ?? 0}"),
                        SizedBox(width: 5),
                        IconAddItemWidget(productModel: productModel),
                      ],
                    )
                    : IconAddItemWidget(productModel: productModel),
              ],
            ),
          ),
        );
      },
    );
  }
}
