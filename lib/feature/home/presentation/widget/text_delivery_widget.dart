import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_text_style.dart';
class TextDeliveryWidget extends StatelessWidget {
  const TextDeliveryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "You are \$3.50 away from free delivery",
          style: AppTextStyle.inter16BlackW700.copyWith(
            fontSize: 14
          ),
        ),
        SizedBox(height: 8),
        HorizontalLineWidget(),
      ],
    );
  }
}

class HorizontalLineWidget extends StatelessWidget {
  const HorizontalLineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xffECECEC),
            borderRadius: BorderRadius.circular(18),
          ),
          width: MediaQuery.sizeOf(context).width * .95,
          height: 6,
        ),

        Container(
          decoration: BoxDecoration(
            color: AppColor.green,
            borderRadius: BorderRadius.circular(18),
          ),
          width: MediaQuery.sizeOf(context).width * .65,
          height: 6,
        ),
      ],
    );
  }
}
