import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/product_model.dart';
import '../control/home/home_cubit.dart';
import 'icon_add_item_widget.dart';
import 'icon_sub_item_widget.dart';
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
