import 'package:flutter/material.dart';

import '../../../feature/cart/presentation/screen/cart_screen.dart';
import '../../../feature/home/presentation/screen/home_screen.dart';

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
