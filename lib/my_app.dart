import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/configure/route/app_route.dart';
import 'feature/home/presentation/control/home/home_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Modern Authentication',
        // home: AddRoomPage(),
        onGenerateRoute: AppRoute.onGenerateRoute,
      ),
    );
  }
}


