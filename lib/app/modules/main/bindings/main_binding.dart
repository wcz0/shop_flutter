import 'package:get/get.dart';
import 'package:shop_flutter/app/modules/cart/bindings/cart_binding.dart';
import 'package:shop_flutter/app/modules/category/bindings/category_binding.dart';
import 'package:shop_flutter/app/modules/home/bindings/home_binding.dart';
import 'package:shop_flutter/app/modules/main/controllers/main_controller.dart';
import 'package:shop_flutter/app/modules/message/bindings/message_binding.dart';
import 'package:shop_flutter/app/modules/other/bindings/other_binding.dart';
import 'package:shop_flutter/app/modules/profile/bindings/profile_binding.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
      fenix: true,
    );
    OtherBinding().dependencies();
    HomeBinding().dependencies();
    CategoryBinding().dependencies();
    MessageBinding().dependencies();
    CartBinding().dependencies();
    ProfileBinding().dependencies();
  }
}
