import 'package:shop_flutter/app/modules/main/model/menu_item.dart';

enum MenuCode {
  home,
  category,
  message,
  cart,
  profile,
}

extension MenuCodeExtension on MenuCode {
  BottomNavItem toBottomNavItem(AppLocalizations localizations) {
    switch (this) {
      case MenuCode.home:
        return BottomNavItem.home;
      case MenuCode.category:
        return BottomNavItem.category;
      case MenuCode.message:
        return BottomNavItem.message;
      case MenuCode.cart:
        return BottomNavItem.cart;
      case MenuCode.profile:
        return BottomNavItem.profile;
      default:
        return BottomNavItem.home;
    }
  }
}