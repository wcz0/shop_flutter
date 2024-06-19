import 'package:bruno/bruno.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_flutter/app/core/base/base_widget_mixin.dart';
import 'package:shop_flutter/app/modules/main/controllers/bottom_nav_controller.dart';
import 'package:shop_flutter/app/modules/main/model/menu_code.dart';

typedef OnBottomNavItemSelected = Function(int index);

class BottomNavBar extends StatelessWidget with BaseWidgetMixin {
  BottomNavBar({
    super.key,
    required this.onItemSelected,
  });

  final OnBottomNavItemSelected onItemSelected;
  final navController = BottomNavController();
  final Key bottomNavKey = GlobalKey();
  final Color selectedItemColor = Colors.white;
  final Color unselectedItemColor = Colors.grey;

  @override
  Widget body(BuildContext context) {
    List<BrnBottomTabBarItem> navItems = _getNavItems();

    return Obx(
      // () => BottomNavigationBar(
      //   key: bottomNavKey,
      //   items: _navItemBuilder(navItems),
      //   showSelectedLabels: true,
      //   showUnselectedLabels: true,
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: AppColors.colorAccent,
      //   selectedItemColor: selectedItemColor,
      //   unselectedItemColor: unselectedItemColor,
      //   currentIndex: navController.selectedIndex,
      //   onTap: (index) {
      //     navController.updateSelectedIndex(index);
      //     onItemSelected(index);
      //   },
      // ),
      () => BrnBottomTabBar(
        items: navItems,
        fixedColor: Colors.blue,
        badgeColor: Colors.white,
        currentIndex: navController.selectedIndex,
        onTap: (index) async {
          if (await onItemSelected(index)) {
            navController.updateSelectedIndex(index);
          }
        },
      ),
    );
  }

  // List<BottomNavigationBarItem> _navItemBuilder(List<BrnBottomTabBarItem> navItems) {
  //   return navItems
  //       .map(
  //         (BrnBottomTabBarItem navItem) => _getBottomNavigationBarItem(
  //           navItem,
  //           navController.selectedIndex == navItems.indexOf(navItem),
  //         ),
  //       )
  //       .toList();
  // }

  // BottomNavigationBarItem _getBottomNavigationBarItem(
  //   BrnBottomTabBarItem navItem,
  //   bool isSelected,
  // ) {
  //   return BottomNavigationBarItem(
  //     icon: navItem.icon,
  //     label: navItem.title,
  //     tooltip: navItem.title,
  //   );
  // }

  List<BrnBottomTabBarItem> _getNavItems() {
    return MenuCode.values
        .map(
          (menuCode) => menuCode.toBrnBottomTabBarItem(appLocalization),
        )
        .toList();
  }
}
