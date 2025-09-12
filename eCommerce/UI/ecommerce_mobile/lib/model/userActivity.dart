import 'package:ecommerce_mobile/model/activity.dart';
import 'package:ecommerce_mobile/model/user.dart';
import 'package:json_annotation/json_annotation.dart';
import 'asset.dart';

part 'userActivity.g.dart';
@JsonSerializable()
class UserActivity {

int? Id;
int? UserId;
User? user;
int? ActivityId;
Activity? activity;
DateTime? DateAssigned;
 String? Note;
 DateTime? CompletedAt;
 String? RewardTitle;
 DateTime? RewardedAt;
 String? Status;




  UserActivity({
    this.Id,this.UserId,this.user,this.ActivityId,this.activity,this.DateAssigned,this.Note,this.CompletedAt,this.RewardTitle,this.RewardedAt,this.Status
    
  });

  factory UserActivity.fromJson(Map<String, dynamic> json) => _$UserActivityFromJson(json);

  Map<String, dynamic> toJson() => _$UserActivityToJson(this);


}
