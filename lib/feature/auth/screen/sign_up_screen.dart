import 'package:flutter/material.dart';
import 'package:modern_authentication_app/feature/auth/screen/login_screen.dart';
import '../widget/body_sign_widget.dart';
import '../widget/do_not_have_acc_widget.dart';
import '../widget/header_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                children: [
                  //--------------- Header ----------------
                  HeaderWidget(
                    isLogin: false,
                    title: "Let’s Get Started!",
                    subTitle: "Create an account on MNZL to get all features",
                  ),
                  //--------------- body ----------------------------
                  BodySignWidget(),
                  // //--------------- Footer ----------------
                  SizedBox(height: 30),
                  DoOrNotHaveAccWidget(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    title: "Already have an account?",
                    subTitle: " Login here",
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


