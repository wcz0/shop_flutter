import 'package:shop_flutter/app/core/base/base_remote_source.dart';
import 'package:shop_flutter/app/data/model/home/search_product_response.dart';
import 'package:shop_flutter/app/data/remote/home/home.dart';
import 'package:shop_flutter/app/network/dio_provider.dart';

class HomeImpl extends BaseRemoteSource implements Home {
  @override
  Future<SearchProductResponse> searchProduct(String keyword, int page, int pageSize) {
    var endpoint = "${DioProvider.baseUrl}/products";
    var dioCall = dioClient.get(endpoint, queryParameters: {
      "keyword": keyword,
      "page": page,
      "pageSize": pageSize,
    });
    try {
      return callApiWithErrorParser(dioCall)
          .then((data) => SearchProductResponse.fromJson(data));
    } catch (e) {
      rethrow;
    }
  }
}