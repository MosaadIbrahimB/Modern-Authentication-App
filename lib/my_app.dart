import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modern_authentication_app/feature/splash/splash_screen.dart';
import 'core/configure/route/app_route.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Modern Authentication',
        // home: AddRoomPage(),
        onGenerateRoute: AppRoute.onGenerateRoute,
      );
  }
}


