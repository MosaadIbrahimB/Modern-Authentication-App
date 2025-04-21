import 'package:flutter/material.dart';
import 'package:modern_authentication_app/utils/app_color.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShaderMask(
        shaderCallback: (bounds) {
          return const LinearGradient(
            colors: [
              AppColor.primary,
              AppColor.secondary,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ).createShader(bounds);
        },
        child: Text(
          'LOGO',
          style: TextStyle(
            fontSize: 80,
            color: Colors.white,
            fontFamily: "Prime",
          ),
        ),
      ),
    );
  }
}
