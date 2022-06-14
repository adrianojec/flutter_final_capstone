import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';

import 'package:final_capstone/actions/user_actions/fetch_users_action.dart';
import 'package:final_capstone/features/home_factory.dart';
import 'package:final_capstone/features/home_view_model.dart';
import 'package:final_capstone/states/app_state.dart';
import 'package:final_capstone/home.dart';

class HomeConnector extends StatelessWidget {
  static const routeName = '/home';

  const HomeConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return StoreConnector<AppState, HomeViewModel>(
      vm: () => HomeFactory(this),
      onInit: (store) async => await store.dispatch(FetchUser()),
      builder: (context, vm) => HomeScreen(user: vm.unionPageState),
    );
  }
}