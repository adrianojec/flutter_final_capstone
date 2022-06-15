import 'package:flutter/material.dart';

import 'package:final_capstone/features/home_connector.dart';
import 'package:final_capstone/screens/login/login_screen.dart';
import 'package:final_capstone/screens/add_time_tracking/add_time_tracking_screen.dart';

class RouteManager{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case HomeConnector.routeName:
        return MaterialPageRoute(builder: (_) => const HomeConnector());
      case AddTimeTrackingScreen.routeName:
        return MaterialPageRoute(builder: (_) => const AddTimeTrackingScreen());
      default:
        return throw Exception('ERROR 404: Page not found');
    }
  }
}