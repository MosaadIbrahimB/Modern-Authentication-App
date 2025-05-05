import 'package:flutter/material.dart';
class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  SwitchWidgetState createState() => SwitchWidgetState();
}

class SwitchWidgetState extends State<SwitchWidget> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isSwitched,
      onChanged: (value) {
        setState(() {
          isSwitched = value;
        });
      },
      activeTrackColor: Colors.green, // لون الخلفية عند التفعيل
      inactiveThumbColor: Colors.white,   // لون الدائرة عند الإيقاف
      inactiveTrackColor: Colors.grey[300], // لون الخلفية عند الإيقاف
    );
  }
}
