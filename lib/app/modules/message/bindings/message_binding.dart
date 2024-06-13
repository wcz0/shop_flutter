import 'package:get/get.dart';
import 'package:shop_flutter/app/modules/message/controllers/message_controller.dart';

class MessageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MessageController>(
      () => MessageController(),
      fenix: true,
    );
  }
}