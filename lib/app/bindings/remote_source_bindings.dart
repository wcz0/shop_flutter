import 'package:get/get.dart';
import 'package:shop_flutter/app/data/remote/home/home.dart';
import 'package:shop_flutter/app/data/remote/home/home_impl.dart';
import 'package:shop_flutter/app/data/remote/other/auth.dart';
import 'package:shop_flutter/app/data/remote/other/auth_impl.dart';

class RemoteSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Auth>(
      () => AuthImpl(),
      tag: (Auth).toString(),
      fenix: true,
    );
    Get.lazyPut<Home>(
      () => HomeImpl(),
      tag: (Home).toString(),
      fenix: true,
    );
  }
}
