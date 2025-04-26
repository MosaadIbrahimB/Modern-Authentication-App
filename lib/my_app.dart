import 'package:flutter/material.dart';
import 'package:modern_authentication_app/feature/home/presentation/screen/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Modern Authentication',
      home: HomeScreen(),
    );
  }
}
