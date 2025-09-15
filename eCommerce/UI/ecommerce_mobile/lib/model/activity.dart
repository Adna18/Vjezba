import 'package:json_annotation/json_annotation.dart';
import 'asset.dart';

part 'activity.g.dart';
@JsonSerializable()
class Activity {

int? id;
String? name;
String? description;
DateTime? dueDate;


  Activity({
    this.id,this.name,this.description,this.dueDate
  });

  factory Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);

  Map<String, dynamic> toJson() => _$ActivityToJson(this);


}
