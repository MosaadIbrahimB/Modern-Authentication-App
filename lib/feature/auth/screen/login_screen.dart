import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:modern_authentication_app/core/widget/logo_widget.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_text_style.dart';
import '../../../core/widget/button_widget.dart';
import '../widget/box_Top_login_screen_widget.dart';
import '../widget/password_text_form_field_widget.dart';
import '../widget/text_form_field_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BoxTopLoginScreenWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                children: [
                  LogoWidget(),
                  Text(
                    "Welcome back!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontFamily: "Roboto",
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Log in to existing LOGO account",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontFamily: "Roboto",
                    ),
                  ),
                  SizedBox(height: 55),
                  TextFormFieldWidget(
                    controller: TextEditingController(),
                    prefixIcon: Icon(Icons.person_outline),
                    labelText: "Username",
                  ),
                  SizedBox(height: 20),
                  PasswordFormFieldWidget(
                    controller: TextEditingController(),
                    prefixIcon: Icon(Icons.lock_outline),
                    labelText: "Password",
                  ),
                  SizedBox(height: 20),
                  ForgotPasswordWidget(),
                  SizedBox(height: 30),
                  ButtonWidget(),
                  //--------------- Footer ----------------
                  SizedBox(height: 20),
                  Text(
                    "Or sign up using ",
                    style: AppTextStyle.helvetica15BlackW400,
                  ),
                  SizedBox(height: 20),
                  SocialLoginWidget(),
                  SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: AppTextStyle.roboto14BlackW700.copyWith(
                          color: Colors.black54,
                          fontSize: 16
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Sign up",
                        style: AppTextStyle.roboto14BlackW700.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        )
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SocialLoginWidget extends StatelessWidget {
  const SocialLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 25,
              child: Image.asset("assets/images/face.png")),
          SizedBox(width: 10),
          CircleAvatar(
              radius: 25,child: Image.asset("assets/images/google.png")),
          SizedBox(width: 10),
          CircleAvatar(
              radius: 25,child: Image.asset("assets/images/mac.png")),
        ],
      ),
    );
  }
}

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
