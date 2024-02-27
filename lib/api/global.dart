import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    final prefs = await SharedPreferences.getInstance();

    final token = prefs.getString('token');
  }
}
