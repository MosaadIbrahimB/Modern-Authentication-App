import 'package:flutter/material.dart';

import '../../../core/utils/app_text_style.dart';
import '../../../core/widget/logo_widget.dart';

class HeaderWidget extends StatelessWidget {
  final bool? isLogin;
  final String title;
  final String subTitle;

  const HeaderWidget({
    super.key,
    required this.title,
    required this.subTitle,
    this.isLogin=true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       isLogin==null? LogoWidget():SizedBox(),
        Text(title, style: AppTextStyle.roboto24BlackW700),
        SizedBox(height: 15),
        Text(subTitle, style: AppTextStyle.roboto14BlackW400),
      ],
    );
  }
}
