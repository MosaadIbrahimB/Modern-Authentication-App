import 'package:flutter/material.dart';

import '../../feature/auth/screen/login_screen.dart';
import '../utils/app_color.dart';
import '../utils/app_text_style.dart';
class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
          gradient: LinearGradient(
            colors: [AppColor.primary, AppColor.secondary],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        width: 199,
        height: 53,
        child: Text(title, style: AppTextStyle.roboto16WhiteW700),
      ),
    );
  }
}
