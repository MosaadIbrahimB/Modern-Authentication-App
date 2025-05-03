import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modern_authentication_app/feature/cart/presentation/screen/cart_screen.dart';
import 'package:modern_authentication_app/feature/home/presentation/screen/home_screen.dart';

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
        // home: HomeScreen(),
        onGenerateRoute: AppRoute.onGenerateRoute,
      ),
    );
  }
}



class AppRoute{

  static final String home='/';
  static final String cart='/cart';

  static Route onGenerateRoute(RouteSettings routSetting) {


    switch(routSetting.name){
      case "/":
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case "/cart":
        return MaterialPageRoute(builder: (context) => CartScreen());
      default:
        return MaterialPageRoute(builder: (context) => _defaultScreen());
    }


  }

  static _defaultScreen(){
    return Scaffold(body: Center(child: Text("Defaulte screen")));
  }

}