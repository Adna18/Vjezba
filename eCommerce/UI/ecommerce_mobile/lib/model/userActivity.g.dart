// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userActivity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserActivity _$UserActivityFromJson(Map<String, dynamic> json) => UserActivity(
      Id: (json['Id'] as num?)?.toInt(),
      UserId: (json['UserId'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      ActivityId: (json['ActivityId'] as num?)?.toInt(),
      activity: json['activity'] == null
          ? null
          : Activity.fromJson(json['activity'] as Map<String, dynamic>),
      DateAssigned: json['DateAssigned'] == null
          ? null
          : DateTime.parse(json['DateAssigned'] as String),
      Note: json['Note'] as String?,
      CompletedAt: json['CompletedAt'] == null
          ? null
          : DateTime.parse(json['CompletedAt'] as String),
      RewardTitle: json['RewardTitle'] as String?,
      RewardedAt: json['RewardedAt'] == null
          ? null
          : DateTime.parse(json['RewardedAt'] as String),
      Status: json['Status'] as String?,
    );

Map<String, dynamic> _$UserActivityToJson(UserActivity instance) =>
    <String, dynamic>{
      'Id': instance.Id,
      'UserId': instance.UserId,
      'user': instance.user,
      'ActivityId': instance.ActivityId,
      'activity': instance.activity,
      'DateAssigned': instance.DateAssigned?.toIso8601String(),
      'Note': instance.Note,
      'CompletedAt': instance.CompletedAt?.toIso8601String(),
      'RewardTitle': instance.RewardTitle,
      'RewardedAt': instance.RewardedAt?.toIso8601String(),
      'Status': instance.Status,
    };
