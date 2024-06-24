import 'package:flutter/material.dart';
import 'package:shop_flutter/app/core/base/base_view.dart';
import 'package:shop_flutter/app/modules/home/controllers/home_controller.dart';
import 'package:shop_flutter/app/modules/home/widget/home_search_bar_widget.dart';

class HomeView extends BaseView<HomeController> {
  HomeView({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) => null;

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        HomeSearchBarWidget(),
      ],
    );
  }
}
