import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required String supervisorId,
    required String firstName,
    required String lastName,
    required String email,
    required String position,
    required String address,
    required String imageUrl,
    required String telephone,
    required String fax,
    required String mobile,
    required int annualLeave,
    required int remainingLeave,
    required int requests,
    required int previousYearLeave,
    required int sickLeave,
}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
