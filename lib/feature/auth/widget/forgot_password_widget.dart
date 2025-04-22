import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../core/utils/app_text_style.dart';
class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log("Forgot Password");
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("Forgot Password ?", style: AppTextStyle.roboto14BlackW700),
        ],
      ),
    );
  }
}
