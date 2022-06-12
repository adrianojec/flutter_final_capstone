import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';

import 'package:final_capstone/actions/user_actions/fetch_users_action.dart';
import 'package:final_capstone/screens/account/account_factory.dart';
import 'package:final_capstone/screens/account/account_view_model.dart';
import 'package:final_capstone/states/app_state.dart';
import 'package:final_capstone/screens/account/account_screen.dart';

class AccountScreenConnector extends StatelessWidget {
  static const routeName = '/account';

  const AccountScreenConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return StoreConnector<AppState, AccountViewModel>(
      vm: () => AccountFactory(this),
      onInit: (store) async => await store.dispatch(FetchUser()),
      builder: (context, vm) => AccountScreen(user: vm.unionPageState),
    );
  }
}