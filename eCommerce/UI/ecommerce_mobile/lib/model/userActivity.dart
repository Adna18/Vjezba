import 'package:ecommerce_mobile/model/activity.dart';
import 'package:ecommerce_mobile/model/user.dart';
import 'package:json_annotation/json_annotation.dart';
import 'asset.dart';

part 'userActivity.g.dart';
@JsonSerializable()
class UserActivity {

int? id;
int? userId;
User? user;
int? activityId;
Activity? activity;
DateTime? dateAssigned;
 String? note;
 DateTime? completedAt;
 String? rewardTitle;
 DateTime? rewardedAt;
 String? status;




  UserActivity({
    this.id,this.userId,this.user,this.activityId,this.activity,this.dateAssigned,this.note,this.completedAt,this.rewardTitle,this.rewardedAt,this.status
    
  });

  factory UserActivity.fromJson(Map<String, dynamic> json) => _$UserActivityFromJson(json);

  Map<String, dynamic> toJson() => _$UserActivityToJson(this);


}
