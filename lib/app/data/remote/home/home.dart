import 'package:shop_flutter/app/data/model/home/search_product_response.dart';

abstract class Home {
  Future<SearchProductResponse> searchProduct(String keyword, int page, int limit);

}