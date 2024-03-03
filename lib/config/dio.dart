import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shop_flutter/config/bootstrap.dart';

class Api {
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://v5.crmeb.net/api',
    ),
  );

  static void init() async {
    // dio.interceptors.add(
    //   InterceptorsWrapper(
    //     onRequest: (options, handler) {
    //       print('请求拦截');
    //       print(options.uri);
    //       print(options.baseUrl);
    //       return handler.next(options);
    //     },
    //     onResponse: (response, handler) {
    //       print('响应拦截');
    //       return handler.next(response);
    //     },
    //     onError: (DioException e, handler) {
    //       print('错误拦截');
    //       return handler.next(e);
    //     },
    //   ),
    // );

    final token = Bootstrap.prefs!.getString('token');
    if (token != null) {
      dio.options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    }
  }

  static void setToken(String token) {
    dio.options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
  }
}
