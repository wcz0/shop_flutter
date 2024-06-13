import 'package:get/get.dart';
import 'package:shop_flutter/app/modules/profile/controllers/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
      fenix: true,
    );
  }
}
