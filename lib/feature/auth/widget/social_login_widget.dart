import 'package:flutter/material.dart';
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
