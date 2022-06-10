import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/freezed_models/user.dart';

class AccountViewModel extends Vm{
  final List<User> users;

  AccountViewModel({required this.users}): super(equals: [users]);
}