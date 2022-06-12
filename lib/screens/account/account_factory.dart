import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/freezed_models/union_page_state.dart';
import 'package:final_capstone/freezed_models/user/user.dart';
import 'package:final_capstone/screens/account/account_screen.dart';
import 'package:final_capstone/screens/account/account_view_model.dart';
import 'package:final_capstone/states/app_state.dart';

class AccountFactory extends VmFactory<AppState, AccountScreen>{
  AccountFactory(super.widget);

  @override
  Vm? fromStore() => AccountViewModel(unionPageState: _getLoadingState());

  UnionPage<List<User>> _getLoadingState(){
    if(state.users.isEmpty){
      return const UnionPage.loading();
    }else{
      return UnionPage(state.users);
    }
  }
}