import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modern_authentication_app/core/widget/logo_widget.dart';
import 'package:modern_authentication_app/utils/app_color.dart';

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
                        "Forgot Password ?",
                        style: AppTextStyle.roboto14BlackW700
                      ),
                    ],
                  ),
                  SizedBox(height: 30),

                  ButtonWidget(),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: AppTextStyle.roboto14BlackW700
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Sign up",
                        style: AppTextStyle.roboto14BlackW700.copyWith(
                          color: AppColor.primary,
                          fontWeight: FontWeight.w700,
                        ),
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

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 5), // اتجاه الظل
            ),
          ],
          borderRadius: BorderRadius.circular(5),
          color: Colors.blue,
          gradient: LinearGradient(colors: [
            AppColor.primary,
            AppColor.secondary
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
      
          ),
      
        ),
        width: 199,
        height: 53,
        child: Text("LOG IN",
          style: AppTextStyle.roboto16WhiteW700,
      
        ),
      
      ),
    );
  }
}

class AppTextStyle {
  static TextStyle roboto14BlackW700 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: Color(0xff515151),
    fontFamily: "Roboto",
  );
  static TextStyle roboto16WhiteW700 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    fontFamily: "Roboto",
  );
}