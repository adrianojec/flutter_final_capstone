import 'package:flutter/material.dart';

import 'package:final_capstone/screens/login/login_screen_widgets/login_screen_widgets.dart';
import 'package:final_capstone/screens/account/account_screen.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const LogoAndTitle(),
                GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed(AccountScreen.routeName),
                  child: const SignInWithMicrosoftButton(),
                ),
                const Spacer(),
                const FooterButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
