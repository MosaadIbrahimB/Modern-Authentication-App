import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modern_authentication_app/core/utils/app_text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SvgPicture.asset(
              "assets/images/fruit/motocycle.svg",
              width: 35,
            ),
            SizedBox(width: 8),
            Text("61 Hopper street..", style: AppTextStyle.inter16BlackW700),
            SizedBox(width: 8),
            SvgPicture.asset("assets/images/fruit/arrow_dawn.svg"),
            Spacer(),
            SvgPicture.asset("assets/images/fruit/bage.svg"),
          ],
        ),
      ),
    );
  }
}
