import 'package:flutter/material.dart';

import 'package:final_capstone/screens/account/account_screen_connector.dart';
import 'package:final_capstone/screens/login/login_screen.dart';

class RouteManager{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case AccountScreenConnector.routeName:
        return MaterialPageRoute(builder: (_) => const AccountScreenConnector());
      default:
        return throw Exception('ERROR 404: Page not found');
    }
  }
}