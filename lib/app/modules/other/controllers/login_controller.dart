import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_flutter/app/core/base/base_controller.dart';

class LoginController extends BaseController {
  GlobalKey<FormFieldState> phoneKey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> passwordKey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> codeKey = GlobalKey<FormFieldState>();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController codeController = TextEditingController();

  final buttonLabel = '账号登录'.obs;
  final pwdShow = false.obs;
  final checkBox = false.obs;
  final codeControllerVisible = true.obs;
  final passwordControllerVisible = false.obs;
  final loginButtonDisabled = false.obs;

  OverlayEntry? overlayEntry;

  final SharedPreferences _prefs = Get.find();

  @override
  void onInit() {
    super.onInit();
    String? phone = _prefs.getString('last-phone');
    if (phone != null) {
      phoneController.text = phone;
    }
    overlayEntry = OverlayEntry(
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  // 登录按钮点击事件
  Future<void> onLogin(BuildContext context) async {
    if (!checkBoxValue()) return;
    showLoading();
    loginButtonDisabled.value = true;
    if(buttonLabel != '账号登录'){
      await
    }

  }

  Future<void> loginByPassword() async {
    if (!phoneKey.currentState!.validate()){
      return;
    }
    if (!passwordKey.currentState!.validate()){
      return;
    }
    
  }

  // 检测 checkBox 是否选中
  bool checkBoxValue() {
    if (!checkBox.value) {
      scaffoldMessenger('请先同意用户协议和隐私协议');
      return false;
    }
    return true;
  }

  // 显示 toast 消息
  void scaffoldMessenger(String msg) {
    ScaffoldMessenger.of(Get.context!).removeCurrentSnackBar();
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: Text(msg),
      ),
    );
  }
}
