import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';

import 'package:final_capstone/actions/user_actions/fetch_users_action.dart';
import 'package:final_capstone/screens/account/account_factory.dart';
import 'package:final_capstone/screens/account/account_view_model.dart';
import 'package:final_capstone/states/app_state.dart';
import 'package:final_capstone/widgets/custom_drawer/custom_drawer.dart';
import 'package:final_capstone/widgets/custom_icon_button.dart';

class AccountScreen extends StatelessWidget {
  static const routeName = '/account';

  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    Size size = MediaQuery.of(context).size;

    return StoreConnector<AppState, AccountViewModel>(
      vm: () => AccountFactory(this),
      onInit: (store) async => await store.dispatch(FetchUsers()),
      builder: (context, vm) => Scaffold(
        key: scaffoldKey,
        drawer: CustomDrawer(scaffoldKey: scaffoldKey),
        appBar: AppBar(
          leading: CustomIconButton(
            iconName: 'menu.svg',
            onPressed: () => scaffoldKey.currentState?.openDrawer(),
          ),
        ),
        body: ListView.builder(
          itemCount: vm.users.length,
          itemBuilder: (context, index) => Text(vm.users[index].firstName),
        ),
      ),
    );
  }
}
