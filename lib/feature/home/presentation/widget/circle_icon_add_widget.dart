import 'package:flutter/material.dart';
class CircleIconWidget extends StatelessWidget {
  const CircleIconWidget({
    super.key, this.icon,
  });
final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 16,
      backgroundColor: Colors.grey.shade300,
      child: CircleAvatar(
        radius: 15,
        backgroundColor: Colors.white,
        child: Icon(icon, size: 25),
      ),
    );
  }
}
