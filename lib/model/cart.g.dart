// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartModel _$CartModelFromJson(Map<String, dynamic> json) => CartModel()
  ..id = json['id'] as int?
  ..uid = json['uid'] as int?
  ..type = json['type'] as String?
  ..productId = json['productId'] as int?
  ..productAttrUnique = json['productAttrUnique'] as String?
  ..cartNum = json['cartNum'] as int?
  ..addTime = json['addTime'] as int?
  ..isPay = json['isPay'] as int?
  ..isDel = json['isDel'] as int?
  ..isNew = json['isNew'] as int?
  ..combinationId = json['combinationId'] as int?
  ..seckillId = json['seckillId'] as int?
  ..bargainId = json['bargainId'] as int?
  ..advanceId = json['advanceId'] as int?
  ..status = json['status'] as int?
  ..productInfo = json['productInfo'] == null
      ? null
      : ProductInfoModel.fromJson(json['productInfo'] as Map<String, dynamic>)
  ..attrStatus = json['attrStatus'] as bool?
  ..vipTruePrice = json['vipTruePrice'] as int?
  ..costPrice = json['costPrice'] as String?
  ..trueStock = json['trueStock'] as int?
  ..truePrice = json['truePrice'] as int?
  ..sumPrice = json['sumPrice'] as String?
  ..priceType = json['priceType'] as String?
  ..isValid = json['isValid'] as int?;

Map<String, dynamic> _$CartModelToJson(CartModel instance) => <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'type': instance.type,
      'productId': instance.productId,
      'productAttrUnique': instance.productAttrUnique,
      'cartNum': instance.cartNum,
      'addTime': instance.addTime,
      'isPay': instance.isPay,
      'isDel': instance.isDel,
      'isNew': instance.isNew,
      'combinationId': instance.combinationId,
      'seckillId': instance.seckillId,
      'bargainId': instance.bargainId,
      'advanceId': instance.advanceId,
      'status': instance.status,
      'productInfo': instance.productInfo,
      'attrStatus': instance.attrStatus,
      'vipTruePrice': instance.vipTruePrice,
      'costPrice': instance.costPrice,
      'trueStock': instance.trueStock,
      'truePrice': instance.truePrice,
      'sumPrice': instance.sumPrice,
      'priceType': instance.priceType,
      'isValid': instance.isValid,
    };
