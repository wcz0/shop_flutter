import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_flutter/app/data/local/preference/preference_manager.dart';
import 'package:shop_flutter/app/routes/app_routes.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    // var pref = Get.find<PreferenceManager>();
    // late String token2;
    // pref.getString('token').then((token) => token2 = token);
    // if (token2 == '') {
    //   // Get.offNamed(Routes.login);
    //   // return null;
    // }
    // return const RouteSettings(name: Routes.login);
    // throw UnimplementedError();
    return const RouteSettings(name: Routes.login);
  }
}
