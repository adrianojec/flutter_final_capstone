import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/services/user_services.dart';
import 'package:final_capstone/states/app_state.dart';

class FetchUser extends ReduxAction<AppState>{
  @override
  Future<AppState> reduce() async {
    try{
      final userService = UserServices();

      final user = await userService.fetchUser();
      return state.copyWith(user: user);
    } on Exception catch(e){
      print(e);
    }
    return state;
  }

}