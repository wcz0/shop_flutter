import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_flutter/app/core/base/base_view.dart';
import 'package:shop_flutter/app/modules/home/views/home_view.dart';
import 'package:shop_flutter/app/modules/main/controllers/main_controller.dart';
import 'package:shop_flutter/app/modules/main/model/menu_code.dart';
import 'package:shop_flutter/app/modules/main/views/bottom_nav_bar.dart';

class MainView extends BaseView<MainController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) => null;

  @override
  Widget body(BuildContext context) {
    return Container(
      key: UniqueKey(),
      child: Obx(
        () => getPageOnSelectedMenu(controller.selectedMenuCode),
      ),
    );
  }

  @override
  Widget? bottomNavigationBar(){
    return BottomNavBar(onItemSelected: controller.onMenuSelected);
  }

  final HomeView homeView = HomeView();

  Widget getPageOnSelectedMenu(MenuCode menuCode) {
    switch (menuCode) {
      case MenuCode.home:
        return Container();
      case MenuCode.category:
        return Container();
      case MenuCode.cart:
        return Container();
      case MenuCode.profile:
        return Container();
      default:
        return Container();
    }
  }
}
