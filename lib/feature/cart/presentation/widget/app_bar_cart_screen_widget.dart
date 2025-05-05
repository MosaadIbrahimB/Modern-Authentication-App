import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_style.dart';

class AppBarCartScreenWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarCartScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text("Cart", style: AppTextStyle.inter16BlackW700),
      actions: [
        SizedBox(
          height: 22,
          width: 22,
          child: Image.asset("assets/images/order.png"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Orders",
            style: AppTextStyle.inter16BlackW700.copyWith(
              // fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 55);
}
