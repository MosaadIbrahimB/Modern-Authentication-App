import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_text_style.dart';
import '../../data/model/product_model.dart';
class DataCardWidget extends StatelessWidget {
  const DataCardWidget({
    super.key,
    required this.productModel,
  });

  final ProductModel? productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productModel == null
                ? "Banana"
                : productModel!.title,

            style: AppTextStyle.inter16BlackW700,
          ),
          SizedBox(height: 8),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                "assets/images/fruit/star.svg",
                width: 25,
              ),
              SizedBox(width: 12),
              Text(
                productModel == null
                    ? "4.8 (287)"
                    : "${productModel!.rating} (${productModel!.ratingCount})",

                style: AppTextStyle.inter16BlackW700,
              ),
            ],
          ),
          SizedBox(height: 12),
          Text(
            productModel == null
                ? "\$3.99"
                : "\$ ${productModel!.price}",

            style: AppTextStyle.inter16BlackW700,
          ),
        ],
      ),
    );
  }
}
