import 'package:get/get.dart';
import 'package:shop_flutter/app/core/middlewares/auth_middleware.dart';
import 'package:shop_flutter/app/modules/cart/bindings/cart_binding.dart';
import 'package:shop_flutter/app/modules/cart/views/cart_view.dart';
import 'package:shop_flutter/app/modules/category/bindings/category_binding.dart';
import 'package:shop_flutter/app/modules/category/views/category_view.dart';
import 'package:shop_flutter/app/modules/home/bindings/home_binding.dart';
import 'package:shop_flutter/app/modules/home/views/home_view.dart';
import 'package:shop_flutter/app/modules/main/bindings/main_binding.dart';
import 'package:shop_flutter/app/modules/main/views/main_view.dart';
import 'package:shop_flutter/app/modules/message/bindings/message_binding.dart';
import 'package:shop_flutter/app/modules/message/views/message_view.dart';
import 'package:shop_flutter/app/modules/other/bindings/other_binding.dart';
import 'package:shop_flutter/app/modules/other/views/login_view.dart';
import 'package:shop_flutter/app/modules/profile/bindings/profile_binding.dart';
import 'package:shop_flutter/app/modules/profile/views/profile_view.dart';
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
    GetPage(
      name: Routes.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginView(),
      binding: OtherBinding(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => ProfileView(),
      binding: ProfileBinding(),
      middlewares: [
        AuthMiddleware(),
      ],
    ),
    GetPage(
      name: Routes.category,
      page: () => CategoryView(),
      binding: CategoryBinding(),
    ),
    GetPage(
      name: Routes.cart,
      page: () => CartView(),
      binding: CartBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: Routes.message,
      page: () => MessageView(),
      binding: MessageBinding(),
      middlewares: [
        AuthMiddleware(),
      ],
    ),
  ];
}
