import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_flutter/app/core/base/base_view.dart';
import 'package:shop_flutter/app/modules/home/controllers/home_controller.dart';
import 'package:shop_flutter/app/modules/home/widget/home_search_bar_widget.dart';
import 'package:shop_flutter/app/routes/app_routes.dart';

class HomeView extends BaseView<HomeController> {
  HomeView({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) => null;

  @override
  Widget body(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HomeSearchBarWidget(),
        ],
      ),
    );
  }
}
