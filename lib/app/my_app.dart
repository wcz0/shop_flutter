import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:shop_flutter/app/routes/app_pages.dart';
import 'package:shop_flutter/flavors/build_config.dart';
import 'package:shop_flutter/flavors/env_config.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
 _MyAppState createState() => _MyAppState();
}

class _MyAPpState extends State<MyApp> {
  final EnvConfig _envConfig = BuildConfig.instance.config;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: _envConfig.appName,
      initialRoute: AppPages.initial,
      initialBinding: InitialB,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}