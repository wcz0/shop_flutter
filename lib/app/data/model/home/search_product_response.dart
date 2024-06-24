import 'package:json_annotation/json_annotation.dart';

part 'search_product_response.g.dart';

@JsonSerializable()
class SearchProductResponse {

  int? id;
  String? storeName;
  String? cateId;
  String? image;
  String? sales;
  String? price;
  int? stock;
  List<dynamic>? activity;
  String? otPrice;
  int? specType;
  String? recommendImage;
  String? unitName;
  int? isVip;
  int? vipPrice;
  int? isVirtual;
  int? presale;
  String? customForm;
  int? virtualType;
  int? minQty;
  String? description;

  SearchProductResponse(
      {this.id,
      this.storeName,
      this.cateId,
      this.image,
      this.sales,
      this.price,
      this.stock,
      this.activity,
      this.otPrice,
      this.specType,
      this.recommendImage,
      this.unitName,
      this.isVip,
      this.vipPrice,
      this.isVirtual,
      this.presale,
      this.customForm,
      this.virtualType,
      this.minQty,
      this.description});

  factory SearchProductResponse.fromJson(Map<String, dynamic> json) =>
        _$SearchProductResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchProductResponseToJson(this);
}
