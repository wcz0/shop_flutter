import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shop_flutter/app/core/base/base_controller.dart';
import 'package:shop_flutter/app/core/values/app_values.dart';
import 'package:shop_flutter/app/data/model/home/search_product_response.dart';
import 'package:shop_flutter/app/data/remote/home/home.dart';
import 'package:shop_flutter/app/data/model/home/search_product_param.dart';
import 'package:shop_flutter/app/modules/home/model/search_item.dart';

class SearchController extends BaseController {
  final Home _homeApi = Get.find(tag: (Home).toString());
  final _pageNumber = 1.obs;
  final searchText = ''.obs;
  final TextEditingController textController = TextEditingController();
  final showClearIcon = false.obs;
  final searchResult = <SearchItem>[].obs;

  @override
  void onInit() {
    super.onInit();
    textController.addListener(() {
      searchText.value = textController.text;
      showClearIcon.value = textController.text.isNotEmpty;
    });
    onSearch();
  }

  // 搜索
  void onSearch() {
    showLoading();
    if (searchText.value.isEmpty) {
      searchText.value = ' ';
    }

    var queryParam = SearchProductParam(
      keyword: searchText.value,
      page: _pageNumber.value,
      limit: AppValues.defaultPageSize,
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

  void onTextClear() {
    searchResult.clear();
  }

  void _handlerProductListResponseSuccess(SearchProductResponse response) {

    List<SearchItem> items = response.items!.map((e) => SearchItem(
      id: e.id!,
      title: e.storeName ?? '',
      price:  e.price != null ? double.parse(e.price!) : 0.0,
      quantity: e.sales != null ? int.parse(e.sales!) : 0,
      image: e.image ?? '',
    )).toList();

    searchResult.addAll(items);
  }

  void onLoad(){
    _pageNumber.value++;
    onSearch();
  }
}
