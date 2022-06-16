import 'package:async_redux/async_redux.dart';

import 'package:final_capstone/freezed_models/union_page_state.dart';
import 'package:final_capstone/freezed_models/user/user.dart';

class HomeViewModel extends Vm{
  final UnionPage<User> unionPageState;

  HomeViewModel({required this.unionPageState}): super(equals: [unionPageState]);
}