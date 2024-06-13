import 'package:flutter/widgets.dart';
import 'package:shop_flutter/app/core/base/base_view.dart';
import 'package:shop_flutter/app/modules/other/controllers/other_controller.dart';

class OtherView extends BaseView<OtherController>{
  OtherView({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) => null;

  @override
  Widget body(BuildContext context) {
    return const Text('OtherView');
  }
}