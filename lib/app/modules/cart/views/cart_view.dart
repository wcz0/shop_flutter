

import 'package:flutter/widgets.dart';
import 'package:shop_flutter/app/core/base/base_view.dart';
import 'package:shop_flutter/app/modules/cart/controllers/cart_controller.dart';

class CartView extends BaseView<CartController> {
  CartView({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) => null;

  @override
  Widget body(BuildContext context) {
    return const Text('CartView');
  }
}