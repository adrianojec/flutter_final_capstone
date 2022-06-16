import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:final_capstone/freezed_models/supervisor/supervisor.dart';
import 'package:final_capstone/freezed_models/address/address.dart';


part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required String firstName,
    required String lastName,
    required String email,
    required String position,
    required Supervisor supervisor,
    required Address address,
    required String imageUrl,
    required String telephone,
    required String fax,
    required String mobile,
    required int annualLeave,
    required int remainingLeave,
    required int requestLeave,
    required int previousYearLeave,
    required int sickLeave,
}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
