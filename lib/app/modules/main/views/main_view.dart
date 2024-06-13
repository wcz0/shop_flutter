import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_flutter/app/core/base/base_view.dart';
import 'package:shop_flutter/app/modules/cart/views/cart_view.dart';
import 'package:shop_flutter/app/modules/category/views/category_view.dart';
import 'package:shop_flutter/app/modules/home/views/home_view.dart';
import 'package:shop_flutter/app/modules/main/controllers/main_controller.dart';
import 'package:shop_flutter/app/modules/main/model/menu_code.dart';
import 'package:shop_flutter/app/modules/main/views/bottom_nav_bar.dart';
import 'package:shop_flutter/app/modules/message/views/message_view.dart';
import 'package:shop_flutter/app/modules/profile/views/profile_view.dart';

class MainView extends BaseView<MainController> {
  MainView({super.key});

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
  late final CategoryView categoryView = CategoryView();
  late final MessageView messageView = MessageView();
  late final CartView cartView = CartView();
  late final ProfileView profileView = ProfileView();


  Widget getPageOnSelectedMenu(MenuCode menuCode) {
    switch (menuCode) {
      case MenuCode.home:
        return homeView;
      case MenuCode.category:
        return categoryView;
      case MenuCode.message:
        return messageView;
      case MenuCode.cart:
        return cartView;
      case MenuCode.profile:
        return profileView;
      default:
        return homeView;
    }
  }
}
