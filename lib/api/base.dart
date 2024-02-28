import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_flutter/config/bootstrap.dart';

class Api {
  Api([this.context]) {
    _options = Options(extra: {"context": context});
  }

  BuildContext? context;
  Options? _options;

  static Dio dio = Dio(BaseOptions(
    baseUrl: 'https://v5.crmeb.net/api',
  ));

  static void init() async {
    // TODO: 网络存储
    // dio.interceptors.add

    final token = Bootstrap.prefs.getString('token');
    if (token != null) {
      dio.options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    }
  }
}
