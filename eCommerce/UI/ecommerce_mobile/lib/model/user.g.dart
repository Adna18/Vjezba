// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      Id: (json['Id'] as num?)?.toInt(),
      FirstName: json['FirstName'] as String?,
      LastName: json['LastName'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'Id': instance.Id,
      'FirstName': instance.FirstName,
      'LastName': instance.LastName,
    };
