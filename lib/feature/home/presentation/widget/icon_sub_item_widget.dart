import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/model/product_model.dart';
import '../../data/repo/repo.dart';
import '../control/home/home_cubit.dart';
import 'circle_icon_add_widget.dart';

class IconSubItemWidget extends StatelessWidget {
  const IconSubItemWidget({super.key, required this.productModel});

  final ProductModel? productModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ProductModel p = ProductModel(
          id: productModel!.id,
          image: productModel!.image,
          title: productModel!.title,
          rating: "4.8",
          ratingCount: "287",
          price: productModel!.price,
          count: productModel!.count,
        );

        BlocProvider.of<HomeCubit>(context).subBagItem(Repo.bagProduct, p);


      },

      child: CircleIconWidget(
        widget: SizedBox(
            width: 20,
            height: 20,
            child: Image.asset("assets/images/trash-icon.png")),
      ),
    );
  }
}
