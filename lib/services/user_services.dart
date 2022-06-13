import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:final_capstone/freezed_models/user/user.dart';

class UserServices {
  Future<User> fetchUser() async {
    Future<User> user = FirebaseFirestore.instance.collection('users')
    .doc('SMgVG9xED0GLzIAhdE4x')
    .get().then((value) => User.fromJson(value.data()!));
    return user;
  }
}
