import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_text_style.dart';

class GoToCheckoutWidget extends StatelessWidget {
  const GoToCheckoutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.green,
        borderRadius: BorderRadius.circular(18),
      ),
      width: MediaQuery.sizeOf(context).width * .95,
      height: 55,
      child: Center(
        child: Text(
          "Go to checkout",
          style: AppTextStyle.inter16BlackW700.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
