import 'package:flutter/widgets.dart';
import 'package:shop_flutter/app/core/base/base_view.dart';
import 'package:shop_flutter/app/modules/message/controllers/message_controller.dart';

class MessageView extends BaseView<MessageController> {
  MessageView({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) => null;

  @override
  Widget body(BuildContext context) {
    return const Text('Message View');
  }
}