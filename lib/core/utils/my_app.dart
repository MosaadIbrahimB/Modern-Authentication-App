import 'package:flutter/material.dart';
import '../../feature/auth/screen/sign_up_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Modern Authentication',
      home: SignUpScreen(),
    );
  }
}
