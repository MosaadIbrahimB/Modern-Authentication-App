import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_text_style.dart';
class ButtonGreenWidget extends StatelessWidget {
  const ButtonGreenWidget({super.key, this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.green,
          borderRadius: BorderRadius.circular(10),
        ),
        width: MediaQuery.sizeOf(context).width * .95,
        height: 50,
        child: Center(
          child: Text(
            "Place Order",
            style: AppTextStyle.inter16BlackW700.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
