import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/states/app_state.dart';

import 'package:final_capstone/freezed_models/union_page_state.dart';
import 'package:final_capstone/freezed_models/user/user.dart';
import 'package:final_capstone/features/home_view_model.dart';
import 'package:final_capstone/features/home_connector.dart';

class HomeFactory extends VmFactory<AppState, HomeConnector>{
  HomeFactory(super.widget);

  @override
  Vm? fromStore() => HomeViewModel(unionPageState: _getLoadingState());

  UnionPage<User> _getLoadingState(){
    if(state.user != null){
      return UnionPage(state.user!);
    }else{
      return const UnionPage.loading();
    }
  }
}