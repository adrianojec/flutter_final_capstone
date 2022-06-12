import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';

import 'package:final_capstone/actions/user_actions/fetch_users_action.dart';
import 'package:final_capstone/common/side_drawer/custom_drawer.dart';
import 'package:final_capstone/screens/account/account_factory.dart';
import 'package:final_capstone/screens/account/account_screen_widgets/mein_konto.dart';
import 'package:final_capstone/screens/account/account_screen_widgets/vorgesetzte_r.dart';
import 'package:final_capstone/screens/account/account_screen_widgets/wochen_and_monats_bericht.dart';
import 'package:final_capstone/screens/account/account_view_model.dart';
import 'package:final_capstone/states/app_state.dart';
import 'package:final_capstone/utilities/constants/icons_constant.dart';
import 'package:final_capstone/widgets/buttons/custom_icon_button.dart';
import 'package:final_capstone/widgets/sized_box/vertical_space.dart';
import 'package:final_capstone/screens/account/account_screen_widgets/ubersicht.dart';

class AccountScreen extends StatelessWidget {
  static const routeName = '/account';

  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final textTheme = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;

    return StoreConnector<AppState, AccountViewModel>(
      vm: () => AccountFactory(this),
      onInit: (store) async => await store.dispatch(FetchUsers()),
      builder: (context, vm) => Scaffold(
        key: scaffoldKey,
        drawer: SideDrawer(scaffoldKey: scaffoldKey),
        appBar: AppBar(
          leading: CustomIconButton(
            iconName: menuIcon,
            onPressed: () => scaffoldKey.currentState?.openDrawer(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  width: size.width,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 25.0,
                  ),
                  child: Column(
                    children: [
                      MeinKonto(),
                      VerticalSpace(heightPercentage: 2),
                      VorgesetzteR(),
                      VerticalSpace(heightPercentage: 2),
                      WochenAndMonatsbericht(),
                    ],
                  ),
                ),
                const VerticalSpace(heightPercentage: 2),
                Ubersicht(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}