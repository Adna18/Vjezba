import 'package:json_annotation/json_annotation.dart';
import 'asset.dart';

part 'user.g.dart';
@JsonSerializable()
class User {

int? id;
String? firstName;
String? lastName;

  User({
    this.id,this.firstName,this.lastName
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);


}
