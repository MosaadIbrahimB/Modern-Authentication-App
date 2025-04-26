import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_text_style.dart';

class SeeAllWidget extends StatelessWidget {
  const SeeAllWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Fruits", style: AppTextStyle.inter16BlackW700),
        Text(
          "See all",
          style: AppTextStyle.inter16BlackW700.copyWith(
            color: AppColor.green,
          ),
        ),
      ],
    );
  }
}
