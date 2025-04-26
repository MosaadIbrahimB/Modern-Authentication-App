import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modern_authentication_app/feature/home/data/model/product_model.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../data/repo/repo.dart';

class ItemCardWidget extends StatefulWidget {
  const ItemCardWidget({super.key, this.productModel});

  final ProductModel? productModel;

  @override
  State<ItemCardWidget> createState() => _ItemCardWidgetState();
}

class _ItemCardWidgetState extends State<ItemCardWidget> {
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
                    widget.productModel == null
                        ? "assets/images/fruit/f9.png"
                        : widget.productModel!.image,
                  ),
                ),
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: InkWell(
                    onTap: () {
                      ProductModel p = ProductModel(
                        image: widget.productModel!.image,
                        title: widget.productModel!.title,
                        rating: "4.8",
                        ratingCount: "287",
                        price: widget.productModel!.price,
                      );
                      setState(() {
                        Repo.bagProduct.add(p);
                      });
                      print(Repo.bagProduct.length);
                      log(widget.productModel!.image);
                    },

                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.grey.shade300,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.add, size: 25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.productModel == null
                        ? "Banana"
                        : widget.productModel!.title,

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
                        widget.productModel == null
                            ? "4.8 (287)"
                            : "${widget.productModel!.rating} (${widget.productModel!.ratingCount})",

                        style: AppTextStyle.inter16BlackW700,
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(
                    widget.productModel == null
                        ? "\$3.99"
                        : "\$ ${widget.productModel!.price}",

                    style: AppTextStyle.inter16BlackW700,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
