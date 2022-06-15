import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:final_capstone/freezed_models/address/address.dart';

part 'supervisor.freezed.dart';
part 'supervisor.g.dart';

@freezed
class Supervisor with _$Supervisor {
  factory Supervisor({
    required String firstName,
    required String lastName,
    required String email,
    required String position,
    required String imageUrl,
    required Address address,
    required String telephone,
    required String fax,
    required String mobile,
}) = _Supervisor;

  factory Supervisor.fromJson(Map<String, dynamic> json) => _$SupervisorFromJson(json);
}
