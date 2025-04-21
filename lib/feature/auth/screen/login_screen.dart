import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modern_authentication_app/core/widget/logo_widget.dart';

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
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: SvgPicture.asset("assets/images/box_gray.svg"),
                ),

                SvgPicture.asset("assets/images/box_blue.svg"),
              ],
            ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot password?",
                        style: AppTextStyle.roboto14BlackW400
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

class AppTextStyle {
  static TextStyle roboto14BlackW400 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black,
    fontFamily: "Roboto",
  );
}