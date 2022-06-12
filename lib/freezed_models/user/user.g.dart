// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      supervisorId: json['supervisorId'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      position: json['position'] as String,
      address: json['address'] as String,
      imageUrl: json['imageUrl'] as String,
      telephone: json['telephone'] as String,
      fax: json['fax'] as String,
      mobile: json['mobile'] as String,
      annualLeave: json['annualLeave'] as int,
      remainingLeave: json['remainingLeave'] as int,
      requests: json['requests'] as int,
      previousYearLeave: json['previousYearLeave'] as int,
      sickLeave: json['sickLeave'] as int,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'supervisorId': instance.supervisorId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'position': instance.position,
      'address': instance.address,
      'imageUrl': instance.imageUrl,
      'telephone': instance.telephone,
      'fax': instance.fax,
      'mobile': instance.mobile,
      'annualLeave': instance.annualLeave,
      'remainingLeave': instance.remainingLeave,
      'requests': instance.requests,
      'previousYearLeave': instance.previousYearLeave,
      'sickLeave': instance.sickLeave,
    };
