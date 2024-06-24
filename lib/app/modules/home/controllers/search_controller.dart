import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shop_flutter/app/core/base/base_controller.dart';
import 'package:shop_flutter/app/data/model/home/search_product_response.dart';
import 'package:shop_flutter/app/data/remote/home/home.dart';
import 'package:shop_flutter/app/data/model/home/search_product_param.dart';
import 'package:shop_flutter/app/modules/home/model/search_item.dart';

class SearchController extends BaseController {
  final Home _homeApi = Get.find(tag: (Home).toString());
  var searchText = ''.obs;
  final TextEditingController textController = TextEditingController();
  var showClearIcon = false.obs;
  var searchResult = <SearchItem>[].obs;

  @override
  void onInit() {
    super.onInit();
    textController.addListener(() {
      searchText.value = textController.text;
      showClearIcon.value = textController.text.isNotEmpty;
    });
  }

  // 搜索
  void onSearch() {
    if (searchText.value.isEmpty) return;
    showLoading();
    var queryParam = SearchProductParam(
      keyword: searchText.value,
      page: 1,
      limit: 10,
    );
    var searchResult = _homeApi.searchProduct(queryParam);
    callDataService(
      searchResult,
      onSuccess: _handlerProductListResponseSuccess,
    );

    hideLoading();
  }

  void onClear() {
    textController.clear();
    searchText.value = '';
  }

  void _handlerProductListResponseSuccess(SearchProductResponse response) {
    searchResult.clear();
    // searchResult.value = response.map
  }
}
