// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchProductResponse _$SearchProductResponseFromJson(
        Map<String, dynamic> json) =>
    SearchProductResponse(
      id: (json['id'] as num?)?.toInt(),
      storeName: json['storeName'] as String?,
      cateId: json['cateId'] as String?,
      image: json['image'] as String?,
      sales: json['sales'] as String?,
      price: json['price'] as String?,
      stock: (json['stock'] as num?)?.toInt(),
      activity: json['activity'] as List<dynamic>?,
      otPrice: json['otPrice'] as String?,
      specType: (json['specType'] as num?)?.toInt(),
      recommendImage: json['recommendImage'] as String?,
      unitName: json['unitName'] as String?,
      isVip: (json['isVip'] as num?)?.toInt(),
      vipPrice: (json['vipPrice'] as num?)?.toInt(),
      isVirtual: (json['isVirtual'] as num?)?.toInt(),
      presale: (json['presale'] as num?)?.toInt(),
      customForm: json['customForm'] as String?,
      virtualType: (json['virtualType'] as num?)?.toInt(),
      minQty: (json['minQty'] as num?)?.toInt(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$SearchProductResponseToJson(
        SearchProductResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeName': instance.storeName,
      'cateId': instance.cateId,
      'image': instance.image,
      'sales': instance.sales,
      'price': instance.price,
      'stock': instance.stock,
      'activity': instance.activity,
      'otPrice': instance.otPrice,
      'specType': instance.specType,
      'recommendImage': instance.recommendImage,
      'unitName': instance.unitName,
      'isVip': instance.isVip,
      'vipPrice': instance.vipPrice,
      'isVirtual': instance.isVirtual,
      'presale': instance.presale,
      'customForm': instance.customForm,
      'virtualType': instance.virtualType,
      'minQty': instance.minQty,
      'description': instance.description,
    };
