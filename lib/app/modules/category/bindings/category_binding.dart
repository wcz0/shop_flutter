import 'package:get/get.dart';
import 'package:shop_flutter/app/modules/category/controllers/category_controller.dart';

class CategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryController>(
      () => CategoryController(),
      fenix: true,
    );
  }
}