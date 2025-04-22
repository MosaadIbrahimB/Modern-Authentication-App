import 'package:flutter/material.dart';

import '../../../core/utils/app_text_style.dart';

class DoOrNotHaveAccWidget extends StatelessWidget {
  const DoOrNotHaveAccWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppTextStyle.roboto14BlackW700.copyWith(
            color: Colors.black54,
            fontSize: 16,
          ),
        ),
        SizedBox(width: 5),
        Text(
          subTitle,
          style: AppTextStyle.roboto14BlackW700.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
