import 'package:flutter/material.dart';

import '../../data/repo/repo.dart';
import 'custom_badge_widget.dart';
class ListItemOfBagWidget extends StatelessWidget {
  const ListItemOfBagWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .55,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        reverse: true,
        padding: EdgeInsets.symmetric(horizontal: 8),
        separatorBuilder: (context, index) => SizedBox(width: 8),
        scrollDirection: Axis.horizontal,
        itemCount: Repo.bagProduct.length,
        itemBuilder: (context, index) {
          return CustomBadgeWidget(productModel: Repo.bagProduct[index]);
        },
      ),
    );
  }
}
