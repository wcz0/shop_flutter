import 'package:json_annotation/json_annotation.dart';
import 'package:shop_flutter/model/user.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile {
  Profile();
  User? user;
  String? token;
  String? lastLogin;
  String? locale;

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
