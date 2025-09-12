import 'package:json_annotation/json_annotation.dart';
import 'asset.dart';

part 'user.g.dart';
@JsonSerializable()
class User {

int? Id;
String? FirstName;
String? LastName;

  User({
    this.Id,this.FirstName,this.LastName
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);


}
