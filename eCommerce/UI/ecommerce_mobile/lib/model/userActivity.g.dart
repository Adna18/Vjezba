// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userActivity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserActivity _$UserActivityFromJson(Map<String, dynamic> json) => UserActivity(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      activityId: (json['activityId'] as num?)?.toInt(),
      activity: json['activity'] == null
          ? null
          : Activity.fromJson(json['activity'] as Map<String, dynamic>),
      dateAssigned: json['dateAssigned'] == null
          ? null
          : DateTime.parse(json['dateAssigned'] as String),
      note: json['note'] as String?,
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      rewardTitle: json['rewardTitle'] as String?,
      rewardedAt: json['rewardedAt'] == null
          ? null
          : DateTime.parse(json['rewardedAt'] as String),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$UserActivityToJson(UserActivity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'user': instance.user,
      'activityId': instance.activityId,
      'activity': instance.activity,
      'dateAssigned': instance.dateAssigned?.toIso8601String(),
      'note': instance.note,
      'completedAt': instance.completedAt?.toIso8601String(),
      'rewardTitle': instance.rewardTitle,
      'rewardedAt': instance.rewardedAt?.toIso8601String(),
      'status': instance.status,
    };
