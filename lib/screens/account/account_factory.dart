import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/screens/account/account_screen.dart';
import 'package:final_capstone/screens/account/account_view_model.dart';
import 'package:final_capstone/states/app_state.dart';

class AccountFactory extends VmFactory<AppState, AccountScreen>{
  AccountFactory(super.widget);

  @override
  Vm? fromStore() => AccountViewModel(users: state.users);
}