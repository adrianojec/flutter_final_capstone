import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/states/app_state.dart';

import 'package:final_capstone/freezed_models/union_page_state.dart';
import 'package:final_capstone/freezed_models/user/user.dart';
import 'package:final_capstone/screens/account/account_view_model.dart';
import 'package:final_capstone/screens/account/account_screen_connector.dart';

class AccountFactory extends VmFactory<AppState, AccountScreenConnector>{
  AccountFactory(super.widget);

  @override
  Vm? fromStore() => AccountViewModel(unionPageState: _getLoadingState());

  UnionPage<User> _getLoadingState(){
    if(state.user != null){
      return UnionPage(state.user!);
    }else{
      return const UnionPage.loading();
    }
  }
}