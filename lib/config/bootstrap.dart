import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_flutter/api/base.dart';

class Bootstrap {
  static late SharedPreferences prefs;


  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    prefs = await SharedPreferences.getInstance();


    Api.init();
  }
}
