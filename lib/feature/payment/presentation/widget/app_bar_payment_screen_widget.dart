import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_style.dart';
class AppBaPaymentScreenWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBaPaymentScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text("Payment", style: AppTextStyle.inter16BlackW700),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 55);
}