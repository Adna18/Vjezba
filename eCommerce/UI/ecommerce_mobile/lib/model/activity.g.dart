// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Activity _$ActivityFromJson(Map<String, dynamic> json) => Activity(
      Id: (json['Id'] as num?)?.toInt(),
      Name: json['Name'] as String?,
      Description: json['Description'] as String?,
      DueDate: json['DueDate'] == null
          ? null
          : DateTime.parse(json['DueDate'] as String),
    );

Map<String, dynamic> _$ActivityToJson(Activity instance) => <String, dynamic>{
      'Id': instance.Id,
      'Name': instance.Name,
      'Description': instance.Description,
      'DueDate': instance.DueDate?.toIso8601String(),
    };
