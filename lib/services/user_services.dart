import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_capstone/freezed_models/user/user.dart';

class UserServices {
  List<User> _users = List<User>.empty(growable: true);

  List<User> get users => _users;

  Future<void> fetchUsers() async {
    Stream<List<User>> userStream = FirebaseFirestore.instance
        .collection('users')
        .snapshots()
        .map((snapshot) => snapshot.docs
        .map((doc) => User.fromJson(doc.data())).toList());

    _users = await userStream.first;
  }
}