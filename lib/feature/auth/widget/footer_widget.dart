import 'package:flutter/material.dart';
import 'package:modern_authentication_app/feature/auth/widget/social_login_widget.dart';

import '../../../core/utils/app_text_style.dart';
import 'do_not_have_acc_widget.dart';
class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          "Or sign up using ",
          style: AppTextStyle.helvetica15BlackW400,
        ),
        const SizedBox(height: 20),
        const SocialLoginWidget(),
        const SizedBox(height: 30),
        const DoOrNotHaveAccWidget(title: "Don't have an account?",subTitle:   "Sign up",),
      ],
    );
  }
}
