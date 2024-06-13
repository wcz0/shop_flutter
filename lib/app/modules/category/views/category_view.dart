import 'package:flutter/widgets.dart';
import 'package:shop_flutter/app/core/base/base_view.dart';
import 'package:shop_flutter/app/modules/category/controllers/category_controller.dart';

class CategoryView extends BaseView<CategoryController> {
  CategoryView({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) => null;

  @override
  Widget body(BuildContext context) {
    return const Text('Category View');
  }
}