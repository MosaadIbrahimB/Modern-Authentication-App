import 'package:flutter/material.dart';
import 'package:modern_authentication_app/feature/auth/screen/login_screen.dart';
import 'package:modern_authentication_app/feature/auth/screen/sign_up_screen.dart';
import 'package:modern_authentication_app/feature/splash/splash_screen.dart';


class AppRoute{

   static const  String splashScreen='/';
    static const String login='/login';
    static const String signup='/signup';


  static Route onGenerateRoute(RouteSettings routSetting) {


    switch(routSetting.name){
      case AppRoute.splashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case AppRoute.login:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case AppRoute.signup:
        return MaterialPageRoute(builder: (context) => SignUpScreen());
      default:
        return MaterialPageRoute(builder: (context) => _defaultScreen());
    }


  }

  static _defaultScreen(){
    return Scaffold(body: Center(child: Text("Defaulte screen")));
  }

}
