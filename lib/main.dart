import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:final_capstone/routes/route_manager.dart';
import 'package:final_capstone/screens/login/login_screen.dart';
import 'package:final_capstone/utilities/theme_data/app_theme_data.dart';
import 'package:final_capstone/utilities/constants/strings_constant.dart';
import 'package:final_capstone/states/app_state.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Store<AppState>(initialState: AppState.initialState());

    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: LoginScreen.routeName,
        onGenerateRoute: RouteManager.generateRoute,
        title: appTitle,
        theme: appTheme,
      ),
    );
  }
}
