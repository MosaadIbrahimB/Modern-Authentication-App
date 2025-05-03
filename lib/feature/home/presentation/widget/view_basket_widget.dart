import 'package:flutter/material.dart';
import 'package:modern_authentication_app/feature/home/presentation/widget/text_basket_view_and_icon_basket_widget.dart';
import 'bottom_sheet_widget.dart';

class ViewBasketWidget extends StatelessWidget {
  const ViewBasketWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          scrollControlDisabledMaxHeightRatio: .8,
          backgroundColor: Colors.white,
          context: context,
          builder: (context) => BottomSheetWidget(),
        );
      },
      child: TextBasketViewAndIconBasketWidget(title: "View Basket",),
    );
  }
}


