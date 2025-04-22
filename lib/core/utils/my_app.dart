import 'package:flutter/material.dart';
import 'package:modern_authentication_app/feature/auth/screen/login_screen.dart';
import 'package:modern_authentication_app/feature/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Modern Authentication',
      home: LoginScreen(),
    );
  }
}
