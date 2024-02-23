import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  User();

  num? uid;
  String? username;
  String? password;
  String? realName;
  String? cardId;
  String? mark;
  num? groupId;
  String? nickName;
  String? avatar;
  String? phone;
  

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
