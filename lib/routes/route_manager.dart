import 'package:flutter/material.dart';

import 'package:final_capstone/screens/account/account_screen.dart';
import 'package:final_capstone/screens/login/login_screen.dart';

class RouteManager{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case AccountScreen.routeName:
        return MaterialPageRoute(builder: (_) => const AccountScreen());
      default:
        return throw Exception('ERROR 404: Page not found');
    }
  }
}