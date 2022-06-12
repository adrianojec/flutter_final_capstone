import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:final_capstone/freezed_models/user/user.dart';

class UserServices {

  Future<User> fetchUser() async {
    Stream<User> userStream = FirebaseFirestore.instance
        .collection('users')
        .snapshots()
        .map((snapshot) => User.fromJson(snapshot.docs.first.data()));
    //
    return userStream.first;
  }
}
