// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User()
  ..uid = json['uid'] as num?
  ..username = json['username'] as String?
  ..password = json['password'] as String?
  ..realName = json['realName'] as String?
  ..cardId = json['cardId'] as String?
  ..mark = json['mark'] as String?
  ..groupId = json['groupId'] as num?
  ..nickName = json['nickName'] as String?
  ..avatar = json['avatar'] as String?
  ..phone = json['phone'] as String?;

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'uid': instance.uid,
      'username': instance.username,
      'password': instance.password,
      'realName': instance.realName,
      'cardId': instance.cardId,
      'mark': instance.mark,
      'groupId': instance.groupId,
      'nickName': instance.nickName,
      'avatar': instance.avatar,
      'phone': instance.phone,
    };
