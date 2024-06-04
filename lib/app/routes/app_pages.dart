import 'package:get/get.dart';
import 'package:shop_flutter/app/modules/main/bindings/main_binding.dart';
import 'package:shop_flutter/app/modules/main/views/main_view.dart';
import 'package:shop_flutter/app/routes/app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.main;

  static final routes = [
    GetPage(
      name: Routes.main,
      page: () => MainView(),
      binding: MainBinding(),
    ),
  ];
}
