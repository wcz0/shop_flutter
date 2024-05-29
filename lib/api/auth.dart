import 'package:dio/dio.dart';
import 'package:shop_flutter/config/dio.dart';

Future<Response> byPasswordLogin(String username, String password) async {
  return Api.dio.post('/login', data: {
    'username': username,
    'password': password,
  });
}

Future<Response> byCodeLogin(String phone, String code) async {
  return Api.dio.post('/login/mobile', data: {
    'phone': phone,
    'captcha': code,
  });
}