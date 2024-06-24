import 'package:get/get.dart';
import 'package:shop_flutter/app/modules/home/controllers/home_controller.dart';
import 'package:shop_flutter/app/modules/home/controllers/search_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
      fenix: true,
    );
    Get.lazyPut<SearchController>(
      () => SearchController(),
      fenix: true,
    );
  }

}