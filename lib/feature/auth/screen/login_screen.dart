import 'package:flutter/material.dart';
import 'package:modern_authentication_app/feature/auth/screen/sign_up_screen.dart';
import '../widget/body_widget.dart';
import '../widget/box_Top_login_screen_widget.dart';
import '../widget/footer_widget.dart';
import '../widget/header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            BoxTopLoginScreenWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                children: [
                  //--------------- Header ----------------
                  HeaderWidget(
                    title: "Welcome back!",
                    subTitle: "Log in to existing LOGO account",
                  ),
                  //--------------- body ----------------------------
                  BodyWidget(),
                  //--------------- Footer ----------------
                  FooterWidget(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
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
