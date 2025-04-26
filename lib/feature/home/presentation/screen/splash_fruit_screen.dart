import 'package:flutter/material.dart';
import 'package:modern_authentication_app/core/utils/app_color.dart';
import 'package:modern_authentication_app/feature/home/presentation/screen/home_screen.dart';

class SplashFruitScreen extends StatefulWidget {
  const SplashFruitScreen({super.key});

  @override
  State<SplashFruitScreen> createState() => _SplashFruitScreenState();
}


class _SplashFruitScreenState extends State<SplashFruitScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Grabber",

        style: TextStyle(
          fontFamily: "BalooDa",
          fontSize: 40,
          fontWeight: FontWeight.w400,
          color: AppColor.green
        ),

        ),
      ),
    );
  }
}
