class SearchProductResponse {
  List<Item>? items;
  SearchProductResponse({this.items});

  factory SearchProductResponse.fromJson(List<dynamic> json) {
    return SearchProductResponse(
        items:
            json.map((e) => Item.fromJson(e as Map<String, dynamic>)).toList());
  }
}

class Item {
    Item({
        required this.id,
        required this.storeName,
        required this.cateId,
        required this.image,
        required this.sales,
        required this.price,
        required this.stock,
        required this.activity,
        required this.otPrice,
        required this.specType,
        required this.recommendImage,
        required this.unitName,
        required this.isVip,
        required this.vipPrice,
        required this.isVirtual,
        required this.presale,
        required this.customForm,
        required this.virtualType,
        required this.minQty,
        required this.description,
        required this.couponId,
        required this.cartButton,
        required this.checkCoupon,
    });

    final int? id;
    final String? storeName;
    final String? cateId;
    final String? image;
    final String? sales;
    final String? price;
    final int? stock;
    final List<dynamic> activity;
    final String? otPrice;
    final int? specType;
    final String? recommendImage;
    final String? unitName;
    final int? isVip;
    final dynamic vipPrice;
    final int? isVirtual;
    final int? presale;
    final String? customForm;
    final int? virtualType;
    final int? minQty;
    final String? description;
    final List<CouponId> couponId;
    final int? cartButton;
    final bool? checkCoupon;

    factory Item.fromJson(Map<String, dynamic> json){
        return Item(
            id: json["id"],
            storeName: json["store_name"],
            cateId: json["cate_id"],
            image: json["image"],
            sales: json["sales"],
            price: json["price"],
            stock: json["stock"],
            activity: json["activity"] == null ? [] : List<dynamic>.from(json["activity"]!.map((x) => x)),
            otPrice: json["ot_price"],
            specType: json["spec_type"],
            recommendImage: json["recommend_image"],
            unitName: json["unit_name"],
            isVip: json["is_vip"],
            vipPrice: json["vip_price"],
            isVirtual: json["is_virtual"],
            presale: json["presale"],
            customForm: json["custom_form"],
            virtualType: json["virtual_type"],
            minQty: json["min_qty"],
            description: json["description"],
            couponId: json["couponId"] == null ? [] : List<CouponId>.from(json["couponId"]!.map((x) => CouponId.fromJson(x))),
            cartButton: json["cart_button"],
            checkCoupon: json["checkCoupon"],
        );
    }

    Map<String, dynamic> toJson() => {
        "id": id,
        "store_name": storeName,
        "cate_id": cateId,
        "image": image,
        "sales": sales,
        "price": price,
        "stock": stock,
        "activity": activity.map((x) => x).toList(),
        "ot_price": otPrice,
        "spec_type": specType,
        "recommend_image": recommendImage,
        "unit_name": unitName,
        "is_vip": isVip,
        "vip_price": vipPrice,
        "is_virtual": isVirtual,
        "presale": presale,
        "custom_form": customForm,
        "virtual_type": virtualType,
        "min_qty": minQty,
        "description": description,
        "couponId": couponId.map((x) => x?.toJson()).toList(),
        "cart_button": cartButton,
        "checkCoupon": checkCoupon,
    };

}

class CouponId {
    CouponId({
        required this.id,
        required this.productId,
        required this.issueCouponId,
        required this.title,
        required this.addTime,
    });

    final int? id;
    final int? productId;
    final int? issueCouponId;
    final String? title;
    final int? addTime;

    factory CouponId.fromJson(Map<String, dynamic> json){
        return CouponId(
            id: json["id"],
            productId: json["product_id"],
            issueCouponId: json["issue_coupon_id"],
            title: json["title"],
            addTime: json["add_time"],
        );
    }

    Map<String, dynamic> toJson() => {
        "id": id,
        "product_id": productId,
        "issue_coupon_id": issueCouponId,
        "title": title,
        "add_time": addTime,
    };

}
