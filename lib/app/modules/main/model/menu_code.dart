import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:bruno/bruno.dart';


enum MenuCode {
  home,
  category,
  message,
  cart,
  profile,
}

extension MenuCodeExtension on MenuCode {
  BrnBottomTabBarItem toBrnBottomTabBarItem(AppLocalizations localizations) {
    switch (this) {
      case MenuCode.home:
        return BrnBottomTabBarItem(
          title: Text(localizations.bottomNavHome),
          icon: const Icon(Icons.home),
        );
      case MenuCode.category:
        return BrnBottomTabBarItem(
          title: Text(localizations.bottomNavCategory),
          icon: const Icon(Icons.category),
        );
      case MenuCode.message:
        return BrnBottomTabBarItem(
          title: Text(localizations.bottomNavMessage),
          icon: const Icon(Icons.message),
        );
      case MenuCode.cart:
        return BrnBottomTabBarItem(
          title: Text(localizations.bottomNavCart),
          icon: const Icon(Icons.shop),
        );
      case MenuCode.profile:
        return BrnBottomTabBarItem(
          icon: const Icon(Icons.person),
          title: Text(localizations.bottomNavProfile),
        );
      default:
        return BrnBottomTabBarItem(
          title: Text(localizations.bottomNavHome),
          icon: const Icon(Icons.home),
        );
    }
  }
}