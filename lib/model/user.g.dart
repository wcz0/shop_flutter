// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel()
  ..uid = json['uid'] as int?
  ..nickname = json['nickname'] as String?
  ..realName = json['realName'] as String?
  ..avatar = json['avatar'] as String?
  ..phone = json['phone'] as String?
  ..addTime = json['addTime'] as int?
  ..lastTime = json['lastTime'] as int?
  ..nowMoney = json['nowMoney'] as String?
  ..brokeragePrice = json['brokeragePrice'] as String?
  ..integral = json['integral'] as int?
  ..exp = json['exp'] as String?
  ..signNum = json['signNum'] as int?
  ..signRemind = json['signRemind'] as int?
  ..status = json['status'] as int?
  ..level = json['level'] as int?
  ..agentLevel = json['agentLevel'] as int?
  ..spreadOpen = json['spreadOpen'] as int?
  ..spreadUid = json['spreadUid'] as int?
  ..spreadTime = json['spreadTime'] as int?
  ..userType = json['userType'] as String?
  ..isPromoter = json['isPromoter'] as int?
  ..payCount = json['payCount'] as int?
  ..spreadCount = json['spreadCount'] as int?
  ..loginType = json['loginType'] as String?
  ..birthday = json['birthday'] as String?
  ..cardId = json['cardId'] as String?
  ..mark = json['mark'] as String?
  ..groupId = json['groupId'] as int?
  ..addres = json['addres'] as String?
  ..adminid = json['adminid'] as bool?
  ..recordPhone = json['recordPhone'] as String?
  ..isMoneyLevel = json['isMoneyLevel'] as int?
  ..isEverLevel = json['isEverLevel'] as int?
  ..overdueTime = json['overdueTime'] as int?
  ..uniqid = json['uniqid'] as String?
  ..divisionType = json['divisionType'] as int?
  ..divisionStatus = json['divisionStatus'] as int?
  ..isDivision = json['isDivision'] as int?
  ..isAgent = json['isAgent'] as int?
  ..isStaff = json['isStaff'] as int?
  ..divisionId = json['divisionId'] as int?
  ..agentId = json['agentId'] as int?
  ..staffId = json['staffId'] as int?
  ..divisionPercent = json['divisionPercent'] as int?
  ..divisionChangeTime = json['divisionChangeTime'] as int?
  ..divisionEndTime = json['divisionEndTime'] as int?
  ..divisionInvite = json['divisionInvite'] as int?
  ..isDel = json['isDel'] as int?
  ..isOpenMember = json['isOpenMember'] as bool?
  ..agentLevelName = json['agentLevelName'] as String?
  ..isComplete = json['isComplete'] as int?
  ..couponCount = json['couponCount'] as int?
  ..like = json['like'] as int?
  ..notice = json['notice'] as int?
  ..recharge = json['recharge'] as int?
  ..orderStatusSum = json['orderStatusSum'] as String?
  ..extractTotalPrice = json['extractTotalPrice'] as int?
  ..extractPrice = json['extractPrice'] as String?
  ..statu = json['statu'] as int?
  ..brokenCommission = json['brokenCommission'] as int?
  ..commissionCount = json['commissionCount'] as String?
  ..vip = json['vip'] as bool?
  ..yesterDay = json['yesterDay'] as int?
  ..rechargeSwitch = json['rechargeSwitch'] as int?
  ..brokenDay = json['brokenDay'] as int?
  ..balanceFuncStatus = json['balanceFuncStatus'] as int?
  ..invioceFunc = json['invioceFunc'] as bool?
  ..specialInvoice = json['specialInvoice'] as bool?
  ..collectCount = json['collectCount'] as int?
  ..spreadStatus = json['spreadStatus'] as bool?
  ..payVipStatus = json['payVipStatus'] as bool?
  ..memberStyle = json['memberStyle'] as int?
  ..vipStatus = json['vipStatus'] as int?
  ..svipOpen = json['svipOpen'] as bool?
  ..serviceNum = json['serviceNum'] as int?
  ..spreadLevelCount = json['spreadLevelCount'] as int?
  ..extractType =
      (json['extractType'] as List<dynamic>?)?.map((e) => e as String).toList()
  ..isAgentLevel = json['isAgentLevel'] as int?
  ..divisionOpen = json['divisionOpen'] as int?
  ..agentApplyOpen = json['agentApplyOpen'] as int?
  ..isDefaultAvatar = json['isDefaultAvatar'] as int?;

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'uid': instance.uid,
      'nickname': instance.nickname,
      'realName': instance.realName,
      'avatar': instance.avatar,
      'phone': instance.phone,
      'addTime': instance.addTime,
      'lastTime': instance.lastTime,
      'nowMoney': instance.nowMoney,
      'brokeragePrice': instance.brokeragePrice,
      'integral': instance.integral,
      'exp': instance.exp,
      'signNum': instance.signNum,
      'signRemind': instance.signRemind,
      'status': instance.status,
      'level': instance.level,
      'agentLevel': instance.agentLevel,
      'spreadOpen': instance.spreadOpen,
      'spreadUid': instance.spreadUid,
      'spreadTime': instance.spreadTime,
      'userType': instance.userType,
      'isPromoter': instance.isPromoter,
      'payCount': instance.payCount,
      'spreadCount': instance.spreadCount,
      'loginType': instance.loginType,
      'birthday': instance.birthday,
      'cardId': instance.cardId,
      'mark': instance.mark,
      'groupId': instance.groupId,
      'addres': instance.addres,
      'adminid': instance.adminid,
      'recordPhone': instance.recordPhone,
      'isMoneyLevel': instance.isMoneyLevel,
      'isEverLevel': instance.isEverLevel,
      'overdueTime': instance.overdueTime,
      'uniqid': instance.uniqid,
      'divisionType': instance.divisionType,
      'divisionStatus': instance.divisionStatus,
      'isDivision': instance.isDivision,
      'isAgent': instance.isAgent,
      'isStaff': instance.isStaff,
      'divisionId': instance.divisionId,
      'agentId': instance.agentId,
      'staffId': instance.staffId,
      'divisionPercent': instance.divisionPercent,
      'divisionChangeTime': instance.divisionChangeTime,
      'divisionEndTime': instance.divisionEndTime,
      'divisionInvite': instance.divisionInvite,
      'isDel': instance.isDel,
      'isOpenMember': instance.isOpenMember,
      'agentLevelName': instance.agentLevelName,
      'isComplete': instance.isComplete,
      'couponCount': instance.couponCount,
      'like': instance.like,
      'notice': instance.notice,
      'recharge': instance.recharge,
      'orderStatusSum': instance.orderStatusSum,
      'extractTotalPrice': instance.extractTotalPrice,
      'extractPrice': instance.extractPrice,
      'statu': instance.statu,
      'brokenCommission': instance.brokenCommission,
      'commissionCount': instance.commissionCount,
      'vip': instance.vip,
      'yesterDay': instance.yesterDay,
      'rechargeSwitch': instance.rechargeSwitch,
      'brokenDay': instance.brokenDay,
      'balanceFuncStatus': instance.balanceFuncStatus,
      'invioceFunc': instance.invioceFunc,
      'specialInvoice': instance.specialInvoice,
      'collectCount': instance.collectCount,
      'spreadStatus': instance.spreadStatus,
      'payVipStatus': instance.payVipStatus,
      'memberStyle': instance.memberStyle,
      'vipStatus': instance.vipStatus,
      'svipOpen': instance.svipOpen,
      'serviceNum': instance.serviceNum,
      'spreadLevelCount': instance.spreadLevelCount,
      'extractType': instance.extractType,
      'isAgentLevel': instance.isAgentLevel,
      'divisionOpen': instance.divisionOpen,
      'agentApplyOpen': instance.agentApplyOpen,
      'isDefaultAvatar': instance.isDefaultAvatar,
    };
