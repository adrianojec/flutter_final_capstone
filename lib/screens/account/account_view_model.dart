import 'package:async_redux/async_redux.dart';

import 'package:final_capstone/freezed_models/union_page_state.dart';
import 'package:final_capstone/freezed_models/user/user.dart';

class AccountViewModel extends Vm{
  final UnionPage<User> unionPageState;

  AccountViewModel({required this.unionPageState}): super(equals: [unionPageState]);
}