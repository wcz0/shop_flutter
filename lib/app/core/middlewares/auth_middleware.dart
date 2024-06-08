import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_flutter/app/data/local/preference/preference_manager.dart';
import 'package:shop_flutter/app/routes/app_routes.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  final PreferenceManager _pref = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    _pref.getString('token').then((token) {
      if (token == '') {
        return const RouteSettings(name: Routes.login);
      }
    });
    return null;
  }
}
