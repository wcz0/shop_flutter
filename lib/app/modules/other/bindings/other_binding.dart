import 'package:get/get.dart';

class OtherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtherController>(() => OtherController(), fenix: true);
  }
}