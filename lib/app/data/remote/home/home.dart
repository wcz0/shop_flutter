import 'package:shop_flutter/app/data/model/home/search_product_response.dart';
import 'package:shop_flutter/app/data/model/home/search_product_param.dart';

abstract class Home {
  Future<SearchProductResponse> searchProduct(SearchProductParam queryParam);
}