import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_flutter/app/data/local/preference/preference_manager.dart';
import 'package:shop_flutter/app/routes/app_routes.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    var pref = Get.find<PreferenceManager>();

    pref.getString('token').then((token) {
      if (token == '') {
        print('Redirect to login');
        return const RouteSettings(name: Routes.login);
      }
    });

    return null;
  }
}
