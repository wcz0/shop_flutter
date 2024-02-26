// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductInfoModel _$ProductInfoModelFromJson(Map<String, dynamic> json) =>
    ProductInfoModel()
      ..id = json['id'] as int?
      ..merId = json['merId']
      ..image = json['image'] as String?
      ..recommendImage = json['recommendImage'] as String?
      ..sliderImage = (json['sliderImage'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList()
      ..storeName = json['storeName'] as String?
      ..storeInfo = json['storeInfo'] as String?
      ..keyword = json['keyword'] as String?
      ..barCode = json['barCode'] as String?
      ..cateId = json['cateId'] as String?
      ..price = json['price'] as String?
      ..vipPrice = json['vipPrice'] as String?
      ..otPrice = json['otPrice'] as String?
      ..postage = json['postage'] as String?
      ..unitName = json['unitName'] as String?
      ..sort = json['sort'] as int?
      ..sales = json['sales'] as int?
      ..stock = json['stock'] as int?
      ..isShow = json['isShow'] as int?
      ..isHot = json['isHot'] as int?
      ..isBenefit = json['isBenefit'] as int?
      ..isBest = json['isBest'] as int?
      ..isNew = json['isNew'] as int?
      ..isVirtual = json['isVirtual'] as int?
      ..virtualType = json['virtualType'] as int?
      ..addTime = json['addTime'] as int?
      ..isPostage = json['isPostage'] as int?
      ..isDel = json['isDel'] as int?
      ..merUse = json['merUse'] as int?
      ..giveIntegral = json['giveIntegral'] as String?
      ..cost = json['cost'] as String?
      ..isSeckill = json['isSeckill'] as int?
      ..isBargain = json['isBargain']
      ..isGood = json['isGood'] as int?
      ..isSub = json['isSub'] as int?
      ..isVip = json['isVip'] as int?
      ..ficti = json['ficti'] as int?
      ..browse = json['browse'] as int?
      ..codePath = json['codePath'] as String?
      ..soureLink = json['soureLink'] as String?
      ..tempId = json['tempId'] as int?
      ..specType = json['specType'] as int?
      ..activity = json['activity'] as String?
      ..spu = json['spu'] as String?
      ..labelId = json['labelId'] as String?
      ..videoLink = json['videoLink'] as String?
      ..commandWord = json['commandWord'] as String?
      ..recommendList = json['recommendList'] as String?
      ..vipProduct = json['vipProduct'] as int?
      ..presale = json['presale'] as int?
      ..presaleStartTime = json['presaleStartTime'] as int?
      ..presaleEndTime = json['presaleEndTime'] as int?
      ..presaleDay = json['presaleDay'] as int?
      ..logistics = json['logistics'] as String?
      ..freight = json['freight'] as int?
      ..customForm = json['customForm'] as String?
      ..isLimit = json['isLimit'] as int?
      ..limitType = json['limitType'] as int?
      ..limitNum = json['limitNum'] as int?
      ..minQty = json['minQty'] as int?
      ..expressDelivery = json['expressDelivery'] as bool?
      ..storeMention = json['storeMention'] as bool?;

Map<String, dynamic> _$ProductInfoModelToJson(ProductInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'merId': instance.merId,
      'image': instance.image,
      'recommendImage': instance.recommendImage,
      'sliderImage': instance.sliderImage,
      'storeName': instance.storeName,
      'storeInfo': instance.storeInfo,
      'keyword': instance.keyword,
      'barCode': instance.barCode,
      'cateId': instance.cateId,
      'price': instance.price,
      'vipPrice': instance.vipPrice,
      'otPrice': instance.otPrice,
      'postage': instance.postage,
      'unitName': instance.unitName,
      'sort': instance.sort,
      'sales': instance.sales,
      'stock': instance.stock,
      'isShow': instance.isShow,
      'isHot': instance.isHot,
      'isBenefit': instance.isBenefit,
      'isBest': instance.isBest,
      'isNew': instance.isNew,
      'isVirtual': instance.isVirtual,
      'virtualType': instance.virtualType,
      'addTime': instance.addTime,
      'isPostage': instance.isPostage,
      'isDel': instance.isDel,
      'merUse': instance.merUse,
      'giveIntegral': instance.giveIntegral,
      'cost': instance.cost,
      'isSeckill': instance.isSeckill,
      'isBargain': instance.isBargain,
      'isGood': instance.isGood,
      'isSub': instance.isSub,
      'isVip': instance.isVip,
      'ficti': instance.ficti,
      'browse': instance.browse,
      'codePath': instance.codePath,
      'soureLink': instance.soureLink,
      'tempId': instance.tempId,
      'specType': instance.specType,
      'activity': instance.activity,
      'spu': instance.spu,
      'labelId': instance.labelId,
      'videoLink': instance.videoLink,
      'commandWord': instance.commandWord,
      'recommendList': instance.recommendList,
      'vipProduct': instance.vipProduct,
      'presale': instance.presale,
      'presaleStartTime': instance.presaleStartTime,
      'presaleEndTime': instance.presaleEndTime,
      'presaleDay': instance.presaleDay,
      'logistics': instance.logistics,
      'freight': instance.freight,
      'customForm': instance.customForm,
      'isLimit': instance.isLimit,
      'limitType': instance.limitType,
      'limitNum': instance.limitNum,
      'minQty': instance.minQty,
      'expressDelivery': instance.expressDelivery,
      'storeMention': instance.storeMention,
    };
