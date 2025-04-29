import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

import '../../data/model/product_model.dart';
class CustomBadgeWidget extends StatelessWidget {
  const CustomBadgeWidget({
    super.key, required this.productModel, this.child,
  });
  final ProductModel productModel;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: badges.Badge(
        badgeAnimation: badges.BadgeAnimation.scale(
          animationDuration: Duration(milliseconds: 300),
          loopAnimation: false,
        ),
        position:badges. BadgePosition.topEnd(top: -18,end: -4),
        badgeContent: Text(
          "${productModel.count}",
          style: TextStyle(fontSize: 18,color: Colors.white),
        ),

        badgeStyle: badges.BadgeStyle(
          shape: badges.BadgeShape.circle,
          badgeColor: Colors.red,
          padding: EdgeInsets.all(8),
          borderSide: BorderSide(
            color: Colors.green,
            width: 1,
          ),
        ),
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey[200],
          child: SizedBox(
            width: 43,
            height: 43,
            child: Image.asset(
              fit: BoxFit.fitWidth,
              productModel.image,
            ),
          ),
        ),
      ),
    );
  }
}
