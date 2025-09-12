import 'package:json_annotation/json_annotation.dart';
import 'asset.dart';

part 'activity.g.dart';
@JsonSerializable()
class Activity {

int? Id;
String? Name;
String? Description;
DateTime? DueDate;


  Activity({
    this.Id,this.Name,this.Description,this.DueDate
  });

  factory Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);

  Map<String, dynamic> toJson() => _$ActivityToJson(this);


}
