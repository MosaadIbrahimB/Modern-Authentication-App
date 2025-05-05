import 'package:flutter/material.dart';
import 'package:modern_authentication_app/feature/checkout/presentation/screen/check_out_screen.dart';
import 'package:modern_authentication_app/feature/payment/presentation/screen/payment_screen.dart';

import '../../../feature/cart/presentation/screen/cart_screen.dart';
import '../../../feature/home/presentation/screen/home_screen.dart';

class AppRoute{

  static final String home='/';
  static final String cart='/cart';
  static final String checkout='/checkout';
  static final String payment='/payment';

  static Route onGenerateRoute(RouteSettings routSetting) {


    switch(routSetting.name){
      case "/":
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case "/cart":
        return MaterialPageRoute(builder: (context) => CartScreen());
      case "/checkout":
        return MaterialPageRoute(builder: (context) => CheckOutScreen());
      case "/payment":
        return MaterialPageRoute(builder: (context) => PaymentScreen());
      default:
        return MaterialPageRoute(builder: (context) => _defaultScreen());
    }


  }

  static _defaultScreen(){
    return Scaffold(body: Center(child: Text("Defaulte screen")));
  }

}
